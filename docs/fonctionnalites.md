# Fonctionnalités — Akeli Creator (MVP Flutter)

## Pages implémentées

### 1. Page d'accueil publique (`/landingPage`)
**Widget :** `LandingPageWidget`
**Fichier :** `lib/pages/landing_page/landing_page_widget.dart`

- Page marketing pour les utilisateurs non connectés
- Présentation de la plateforme
- Lien vers la connexion/inscription

---

### 2. Authentification (`/authentification`)
**Widget :** `AuthentificationWidget`
**Fichier :** `lib/pages/authentification/authentification_widget.dart`

**Fonctionnalités :**
- Connexion par email / mot de passe (Supabase Auth)
- Inscription par email / mot de passe
- Connexion Apple Sign-In
- Redirection automatique vers `/home` si déjà connecté

**Manques :**
- Pas de flux "mot de passe oublié"
- Pas de vérification email

---

### 3. Dashboard principal (`/home`)
**Widget :** `HomeWidget`
**Fichier :** `lib/pages/home/home_widget.dart`

**Fonctionnalités :**
- Affichage du profil créateur (nom, photo)
- Liste des recettes en brouillon (`PendingRecipeCardWidget`)
- Résumé des statistiques du tableau de bord (`GetDashboardStatsCall`)
- Bouton de création d'une nouvelle recette (crée une ligne dans `temporary_receipe` puis navigue vers `/createRecipe`)

---

### 4. Liste des recettes (`/recipes`)
**Widget :** `RecipesWidget`
**Fichier :** `lib/recipes/recipes_widget.dart`

**Fonctionnalités :**
- Liste toutes les recettes du créateur (publiées + brouillons)
- **Recherche** par nom (`search_name`)
- **Filtres** : publiée / brouillon / gratuite / payante (`filter`)
- **Tri** (`sort_by`)
- **Filtre par région culinaire** (`food_region`)
- **Filtre par type de repas** (`recipe_type`)
- Affichage des compteurs : total / publiées / brouillons
- Statistiques créateur : revenu total, consommateurs totaux

**Source de données :** `GetCreatorRecipesCall` (Edge Function `get-creator-recipes`)

---

### 5. Détail d'une recette (`/recipesDetail`)
**Widget :** `RecipesDetailWidget`
**Fichier :** `lib/recipes_detail/recipes_detail_widget.dart`

> Note : Il existe aussi `RecipesDetailCopyWidget` — semble être un doublon non utilisé.

**Fonctionnalités :**
- Affichage complet de la recette (nom, description, temps, difficulté, région)
- Types de repas (badges)
- Graphique hebdomadaire de consommation (navigation semaine/année)
- Liste des étapes
- Liste des ingrédients
- Compteur de likes et commentaires
- Affichage des commentaires (`CommentComponentWidget`)
- **Toggle publication / dépublication**
- **Suppression définitive** (`HardDeleteRecipeCall`)
- Navigation vers l'édition (`/editRecipe`)

**Sources de données :**
- `GetRecipesDetailsCall` — données principales + graphique hebdomadaire
- `GetRecipesStepsCall` — étapes
- `GetRecipeIngredientsCall` — ingrédients
- `GetRecipeWeeklyChartCall` — données graphique (navigation semaine/année)
- `ReceipeTypeCall` — types de repas

---

### 6. Création de recette (`/createRecipe`)
**Widget :** `CreateRecipeWidget`
**Fichier :** `lib/create_recipe/create_recipe_widget.dart` (~6 700 lignes)

**État local (`CreateRecipeModel`) :**
```
title: String?
description: String?
type: List<String>          // Types de repas
region: String?             // Région culinaire
hPrep: int?                 // Heures de préparation
minPrep: int?               // Minutes de préparation
difficulty: String?         // Niveau de difficulté
tags: List<String>          // Tags
mainImage: FFUploadedFile?  // Image principale
imageRecipe: List<FFUploadedFile>  // Galerie d'images
ingredients: List<IngredientsRow>  // Liste des ingrédients
steps: List<StepRow>               // Liste des étapes
sessionStart: DateTime?            // Suivi de session (analytics)
```

**Formulaire — champs :**
- Titre / nom de la recette
- Description
- Région culinaire (dropdown depuis table `food_region`)
- Niveau de difficulté (dropdown depuis table `difficulty`)
- Temps de préparation (heures + minutes)
- Type(s) de repas (multi-sélection — petit-déjeuner, déjeuner, dîner, etc.)
- Tags (multi-sélection)
- Image principale (upload Supabase Storage)
- Galerie d'images (upload multiple)

**Gestion des ingrédients :**
- Ajout via modal `InsertIngredientWidget`
- Édition via modal `UpdateIngredientWidget`
- Réorganisation par drag-and-drop (`IngredientReorderingCall`)
- Suppression
- Support des **en-têtes de section** (`title: bool` sur la ligne)
- **Type d'arrondi** pour les quantités (`roundtTypeIndex` dans état global)

**Gestion des étapes :**
- Ajout via modal `InsertStepWidget`
- Édition via modal `UpdateStepWidget`
- Réorganisation par drag-and-drop (`StepReorderingCall`)
- Suppression
- Support des **en-têtes de section**

**Workflow de publication :**
```
1. La recette est créée comme brouillon dans temporary_receipe
2. Ingrédients et étapes sont liés par temporaryReceipeId
3. Images uploadées dans Supabase Storage → receipe_image
4. Validation : TemporaryRecipeCleanerCall
5. Publication : PublishReceipeCall → déplace vers receipe
6. Redirection vers le détail de la recette publiée
```

---

### 7. Édition d'une recette publiée (`/editRecipe`)
**Widget :** `EditRecipeWidget`
**Fichier :** `lib/edit_recipe/edit_recipe_widget.dart` (~8 500 lignes)

**Paramètre d'entrée :** `ReceipeRow` (objet recette complet)

- Même fonctionnalités que la création
- Formulaire pré-rempli avec les données existantes
- Travaille directement sur la table `receipe` (pas de brouillon intermédiaire)
- Re-publication après modification

---

### 8. Édition d'un brouillon (`/editDraftRecipe`)
**Widget :** `EditDraftRecipeWidget`
**Fichier :** `lib/edit_draft_recipe/edit_draft_recipe_widget.dart`

**Paramètre d'entrée :** `TemporaryReceipeRow` (objet brouillon complet)

- Même fonctionnalités que la création
- Travaille sur la table `temporary_receipe`
- Workflow de publication identique à la création

---

### 9. Dashboard des revenus (`/dashboardRevenue`)
**Widget :** `DashboardRevenueWidget`
**Fichier :** `lib/dashboard_revenue/dashboard_revenue_widget.dart`

**Fonctionnalités :**
- **Graphique hebdomadaire** de revenus du créateur (navigation semaine/année)
- **Stats mensuelles** : consommations journalières
- **Tableau de performance** des recettes (`GetRecipesPerfomancesCall`)
- **Historique des paiements** (`GetPaymentHistoryCall`)
- Affichage du statut Stripe (onboarding complet ou non)
- Revenus totaux et consommateurs totaux du créateur

**Sources de données :**
- `GetCreatorWeeklyChartCall`
- `GetMonthlyDashboardCall`
- `GetRecipesPerfomancesCall`
- `GetPaymentHistoryCall`

---

### 10. Parrainage (`/parrainageUtilisateur`)
**Widget :** `ParrainageUtilisateurWidget`
**Fichier :** `lib/parrainage_utilisateur/parrainage_utilisateur_widget.dart`

**Fonctionnalités :**
- Affichage du **code de parrainage** du créateur
- Graphique mensuel des **revenus de parrainage**
- Création / personnalisation du code de parrainage

> **Attention :** `ReferralCreationCall` appelle l'endpoint `/functions/v1/cre` — ce nom semble tronqué. À vérifier dans le dashboard Supabase avant la migration.

**Sources de données :**
- `GetMonthlyReferralRevenueCall`
- `GetUserReferralCodeCall`
- `ReferralCreationCall`

---

### 11. Paramètres (`/settings`)
**Widget :** `SettingsWidget`
**Fichier :** `lib/settings/settings_widget.dart`

**Fonctionnalités :**
- Affichage du nom du créateur
- Édition du nom (`EditNameWidget`)
- Affichage de la photo de profil
- Lien vers l'onboarding Stripe
- Déconnexion

**Manques :**
- Pas d'édition de la bio, région, spécialités
- Pas d'upload de photo de profil
- Pas d'édition des autres champs `creator`

---

## Composants réutilisables

### Navigation

| Composant | Fichier | Rôle | Visibilité |
|---|---|---|---|
| `NavbarWidget` | `components/navbar_widget.dart` | Sidebar de navigation desktop | Desktop seulement |
| `MobileNavbarWidget` | `components/mobile_navbar_widget.dart` | Navigation mobile (bas d'écran) | Mobile/Tablet |
| `MobileSidenavWidget` | `components/mobile_sidenav_widget.dart` | Drawer latéral mobile | Mobile/Tablet |

**Liens de navigation dans la sidebar :**
- Accueil (`/home`)
- Mes Recettes (`/recipes`)
- Dashboard revenus (`/dashboardRevenue`)
- Paramètres (`/settings`)

---

### Recettes

| Composant | Fichier | Rôle |
|---|---|---|
| `IngredientWidget` | `components/ingredient_widget.dart` | Affichage d'un ingrédient (lecture, recette publiée) |
| `IngrediWidget` | `components/ingredi_widget.dart` | Affichage d'un ingrédient (brouillon, avec drag handle) |
| `StepWidget` | `components/step_widget.dart` | Affichage d'une étape (lecture, recette publiée) |
| `ReceipeStepWidget` | `components/receipe_step_widget.dart` | Affichage d'une étape (brouillon, avec drag handle) |
| `PendingRecipeCardWidget` | `components/pending_recipe_card_widget.dart` | Carte brouillon sur le home |
| `CommentComponentWidget` | `components/comment_component_widget.dart` | Affichage des commentaires |
| `EditNameWidget` | `components/edit_name_widget.dart` | Édition inline du nom créateur |

---

### Analytics / Revenus

| Composant | Fichier | Rôle |
|---|---|---|
| `BestRecipeWidget` | `components/best_recipe_widget.dart` | Carte recette la plus performante |
| `RevenueRecipeWidget` | `components/revenue_recipe_widget.dart` | Résumé revenu d'une recette |
| `ReceipePerformanceWidget` | `components/receipe_performance_widget.dart` | Ligne du tableau de performance |

---

### Sous-formulaires (modaux)

| Composant | Répertoire | Rôle |
|---|---|---|
| `InsertIngredientWidget` | `lib/receipe/insert_ingredient/` | Formulaire d'ajout d'un ingrédient |
| `UpdateIngredientWidget` | `lib/receipe/update_ingredient/` | Formulaire d'édition d'un ingrédient |
| `InsertStepWidget` | `lib/receipe/insert_step/` | Formulaire d'ajout d'une étape |
| `UpdateStepWidget` | `lib/receipe/update_step/` | Formulaire d'édition d'une étape |

**Champs du formulaire ingrédient :**
- Nom de l'ingrédient
- Quantité (nombre)
- Unité (dropdown : g, ml, cup, cuillère à soupe, etc.)
- Catégorie

**Champs du formulaire étape :**
- Numéro de l'étape
- Texte de l'instruction

---

## Flux UX principaux

### Flux 1 : Création et publication d'une recette

```
/home
  → Clic "Nouvelle recette"
  → Création d'une ligne dans temporary_receipe (INSERT)
  → /createRecipe?temporaryRecipeId=XXX
    → Remplissage des métadonnées (nom, description, région, difficulté, temps, types)
    → Ajout des ingrédients (modaux InsertIngredient)
    → Ajout des étapes (modaux InsertStep)
    → Upload des images (Supabase Storage)
    → Sélection des tags
    → Clic "Publier"
      → TemporaryRecipeCleanerCall (validation)
      → PublishReceipeCall (déplacement vers receipe)
  → /recipesDetail?recipe=XXX
```

### Flux 2 : Édition d'une recette publiée

```
/recipes ou /recipesDetail
  → Clic "Éditer"
  → /editRecipe (avec ReceipeRow en paramètre)
    → Formulaire pré-rempli
    → Modifications
    → Re-publication
  → /recipesDetail (recette mise à jour)
```

### Flux 3 : Reprise d'un brouillon

```
/home (liste des brouillons)
  → Clic sur un brouillon (PendingRecipeCardWidget)
  → /editDraftRecipe (avec TemporaryReceipeRow en paramètre)
    → Formulaire pré-rempli
    → Continuation
    → Publication
  → /recipesDetail
```

### Flux 4 : Consultation du dashboard revenus

```
/dashboardRevenue
  → Chargement : GetCreatorWeeklyChartCall + GetMonthlyDashboardCall + GetRecipesPerfomancesCall + GetPaymentHistoryCall
  → Navigation semaine/année pour le graphique (rechargement GetCreatorWeeklyChartCall)
  → Vue des performances par recette
  → Vue de l'historique des paiements
```
