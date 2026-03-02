# Architecture — Akeli Creator (MVP Flutter)

## Stack technique

| Couche | Technologie | Version |
|---|---|---|
| Framework UI | Flutter | SDK ≥ 3.0.0 |
| Générateur de code | FlutterFlow | — |
| Base de données | Supabase (PostgreSQL) | supabase_flutter 2.9.0 |
| Authentification | Supabase Auth | — |
| Stockage fichiers | Supabase Storage | storage_client 2.4.0 |
| Edge Functions | Supabase Edge Functions (Deno) | — |
| Base secondaire | Firebase Firestore | cloud_firestore 5.6.9 |
| État global | Provider + ChangeNotifier | provider 6.1.5 |
| Navigation | GoRouter | go_router 12.1.3 |
| Charts | fl_chart | 1.0.0 |
| Paiements | Stripe Connect | (via Edge Functions) |

> **Note :** Firebase/Firestore est présent dans les dépendances (héritage FlutterFlow) mais n'est **pas utilisé activement** dans l'application créateur. Supabase est le backend principal.

---

## Structure du projet

```
/home/user/recipe_addition/
├── lib/                          # Code source principal
│   ├── main.dart                 # Point d'entrée, init Supabase + Router
│   ├── app_state.dart            # État global (FFAppState)
│   ├── index.dart                # Exports des widgets pour le routing
│   ├── environment_values.dart   # Configuration (URL API, clé API)
│   │
│   ├── pages/
│   │   ├── authentification/     # Page connexion/inscription
│   │   ├── home/                 # Dashboard principal
│   │   └── landing_page/         # Page d'accueil publique
│   │
│   ├── recipes/                  # Liste des recettes du créateur
│   ├── recipes_detail/           # Vue détaillée d'une recette
│   ├── create_recipe/            # Formulaire création de recette (~6 700 lignes)
│   ├── edit_recipe/              # Formulaire édition recette publiée (~8 500 lignes)
│   ├── edit_draft_recipe/        # Formulaire édition brouillon
│   ├── dashboard_revenue/        # Analytics et revenus
│   ├── parrainage_utilisateur/   # Système de parrainage
│   ├── settings/                 # Paramètres compte
│   │
│   ├── receipe/                  # Sous-formulaires recette
│   │   ├── insert_ingredient/    # Ajout d'un ingrédient
│   │   ├── insert_step/          # Ajout d'une étape
│   │   ├── update_ingredient/    # Édition d'un ingrédient
│   │   └── update_step/          # Édition d'une étape
│   │
│   ├── components/               # Composants UI réutilisables
│   │   ├── navbar_widget.dart
│   │   ├── mobile_navbar_widget.dart
│   │   ├── mobile_sidenav_widget.dart
│   │   ├── ingredient_widget.dart
│   │   ├── step_widget.dart
│   │   ├── comment_component_widget.dart
│   │   ├── pending_recipe_card_widget.dart
│   │   ├── best_recipe_widget.dart
│   │   ├── revenue_recipe_widget.dart
│   │   ├── receipe_performance_widget.dart
│   │   └── edit_name_widget.dart
│   │
│   ├── backend/
│   │   ├── api_requests/
│   │   │   ├── api_calls.dart    # Tous les appels Edge Functions (30+)
│   │   │   └── api_manager.dart  # Client HTTP
│   │   └── supabase/
│   │       ├── supabase.dart     # Initialisation client Supabase
│   │       └── database/
│   │           └── tables/       # ~136 fichiers modèle de tables Supabase
│   │
│   ├── auth/
│   │   └── supabase_auth/
│   │       ├── auth_util.dart           # Helpers auth (currentUserUid, etc.)
│   │       ├── supabase_auth_manager.dart
│   │       └── supabase_user_provider.dart
│   │
│   └── flutter_flow/             # Framework FlutterFlow généré
│       ├── flutter_flow_theme.dart
│       ├── flutter_flow_util.dart
│       ├── custom_functions.dart  # Fonctions utilitaires custom
│       ├── upload_data.dart       # Upload vers Supabase Storage
│       └── nav/
│           └── nav.dart           # Configuration GoRouter (toutes les routes)
│
├── assets/                        # Images, polices, vidéos, JSON
├── firebase/                      # Config Firebase (secondaire)
├── android/, ios/, web/           # Plateformes cibles
└── pubspec.yaml                   # Dépendances Dart/Flutter
```

---

## Authentification

**Provider :** Supabase Auth

**Méthodes supportées :**
- Email / mot de passe
- Apple Sign-In (`sign_in_with_apple`)

**Flux d'authentification :**
```
1. Utilisateur entre ses identifiants sur /authentification
2. Supabase Auth retourne un JWT + session
3. Le JWT est exposé via un stream : jwtTokenStream
4. L'app écoute les changements d'état auth via SupabaseUserProvider
5. Si authentifié → redirection vers /home
6. Si non authentifié → maintien sur /authentification ou /landingPage
```

**Helpers disponibles (`auth_util.dart`) :**
```dart
String currentUserEmail       // Email de l'utilisateur connecté
String currentUserUid         // UID Supabase Auth
String currentUserDisplayName // Nom d'affichage
String currentUserPhoto       // URL photo de profil
String currentJwtToken        // Token JWT actuel
bool currentUserEmailVerified // Email vérifié ?
Stream jwtTokenStream         // Stream du token JWT
```

**Récupération du profil créateur :**
Après connexion, l'app récupère la ligne `creator` où `auth_id = currentUserUid` et stocke l'identité dans `FFAppState.creatorIdentity`.

---

## Navigation (GoRouter)

**Fichier :** `lib/flutter_flow/nav/nav.dart`

**Routes définies :**

| Nom de route | Chemin | Widget | Auth requise | Paramètres |
|---|---|---|---|---|
| `_initialize` | `/` | `HomeWidget` ou `AuthentificationWidget` | Conditionnelle | — |
| `authentification` | `/authentification` | `AuthentificationWidget` | Non | — |
| `landing_page` | `/landingPage` | `LandingPageWidget` | Non | — |
| `Home` | `/home` | `HomeWidget` | Oui | — |
| `recipes` | `/recipes` | `RecipesWidget` | Oui | — |
| `recipesDetail` | `/recipesDetail` | `RecipesDetailWidget` | Oui | `recipe` (int), `creator` (CreatorRow) |
| `create-recipe` | `/createRecipe` | `CreateRecipeWidget` | Oui | `temporaryRecipeId` (int), `fromDraft` (bool) |
| `edit_recipe` | `/editRecipe` | `EditRecipeWidget` | Oui | `recipeRow` (ReceipeRow) |
| `edit_draft_recipe` | `/editDraftRecipe` | `EditDraftRecipeWidget` | Oui | `temporaryRecipeRow` (TemporaryReceipeRow) |
| `dashboard_revenue` | `/dashboardRevenue` | `DashboardRevenueWidget` | Oui | — |
| `parrainage_utilisateur` | `/parrainageUtilisateur` | `ParrainageUtilisateurWidget` | Oui | — |
| `settings` | `/settings` | `SettingsWidget` | Oui | — |

> **Note :** Certaines routes passent des objets Supabase complets comme paramètres (ex: `ReceipeRow`). Dans Next.js, seul l'ID sera passé dans l'URL, la donnée sera re-fetché côté serveur.

---

## État global (`FFAppState`)

**Fichier :** `lib/app_state.dart`

**Type :** Singleton `ChangeNotifier`

| Propriété | Type | Rôle |
|---|---|---|
| `mealType` | `List<String>` | Types de repas sélectionnés dans le formulaire recette |
| `roundtTypeIndex` | `int` | Index du type d'arrondi pour les quantités d'ingrédients |
| `sidebarOpen` | `bool` | État d'ouverture de la sidebar |
| `landingpageSidebarOpen` | `bool` | État sidebar sur la page d'accueil |
| `navbarOpen` | `bool` | État d'ouverture de la navbar |
| `creatorAuthId` | `String` | UID Supabase Auth du créateur connecté |
| `creatorIdentity` | `FutureRequestManager<List<CreatorRow>>` | Cache du profil créateur |
| `dashboard` | `FutureRequestManager<List<CreatorDashboardStatsRow>>` | Cache des stats dashboard |

---

## Pattern architecture (Widget + Model)

Chaque page et composant suit le pattern FlutterFlow :

```
create_recipe/
├── create_recipe_widget.dart   # UI (StatefulWidget)
└── create_recipe_model.dart    # Logique locale (FlutterFlowModel)
```

Le `Model` contient :
- Les `TextEditingController` pour chaque champ de formulaire
- Les `FocusNode`
- L'état local (listes d'ingrédients, d'étapes, fichiers uploadés...)
- Les méthodes `initState()` et `dispose()`

---

## Thème et design

**Palette de couleurs (FlutterFlowTheme) :**
- Couleur principale : Violet `#9C88FF`
- Accent : Orange `#FF9F1C`
- Fond : Blanc / gris clair

**Polices :** Google Fonts (via `google_fonts` package)

**Responsive :** La responsive est gérée via des helpers `responsiveVisibility()` de FlutterFlow qui affichent/masquent des blocs selon le breakpoint (phone / tablet / desktop). Ce n'est pas du Tailwind — chaque layout mobile et desktop est souvent codé séparément dans le même widget.
