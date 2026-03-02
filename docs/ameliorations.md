# Améliorations — Axes de travail pour la v1 / migration Next.js

Ce document recense les incohérences, manques et axes d'amélioration identifiés dans le MVP Flutter, à traiter lors de la migration vers Next.js.

---

## Anomalies de code à corriger

### 1. Nommage incohérent de la base de données
Le schéma Supabase contient plusieurs anomalies de nommage qui compliquent les requêtes :

| Problème | Table | Colonne concernée |
|---|---|---|
| Espace au lieu d'underscore | `receipe` | `sans porc` |
| Majuscule + espace | `receipe` | `Food Region` |
| Casse différente entre tables | `temporary_receipe` | `Food region` ≠ `receipe.Food Region` |
| Espace dans le nom | `temporary_receipe` | `time_of_cooking min` |
| Espaces dans le nom | `temporary_receipe` | `time of cooking hour` |
| Faute de frappe (double r) | `step` | `temprorary_receipe_id` |
| Espace dans le nom de table | (table) | `food region` |

> **Action recommandée :** Créer une migration SQL pour corriger ces noms lors du passage en production de la v1 Next.js, **ou** générer des types TypeScript qui exposent des noms normalisés via des alias.

---

### 2. Fautes d'orthographe dans le mot "recette"
Le mot "receipe" (faute persistante pour "recipe") est utilisé partout : tables, colonnes, noms de classes, endpoints. Ce n'est pas un problème bloquant mais crée de la confusion.

- Tables : `receipe`, `temporary_receipe`, `receipe_image`, `receipe_tags`, `receipe_likes`, `receipe_comments`
- Endpoint : `receiep_type` (double faute : receipe + inversion e/p)

> **Action recommandée :** Renommer progressivement dans Next.js en gardant la compatibilité avec la BDD existante via des alias TypeScript. Ne pas renommer en BDD sans migration planifiée.

---

### 3. Composants dupliqués à consolider
Deux paires de composants font la même chose avec des variantes mineures :

| Composant 1 | Composant 2 | Différence |
|---|---|---|
| `IngredientWidget` | `IngrediWidget` | L'un a un drag handle, l'autre non |
| `StepWidget` | `ReceipeStepWidget` | Idem |
| `RecipesDetailWidget` | `RecipesDetailCopyWidget` | Semble être un doublon non utilisé |

> **Action recommandée :** Dans Next.js, créer un seul composant `IngredientRow` et `StepRow` avec une prop `draggable: boolean`.

---

### 4. Endpoint de parrainage suspect
`ReferralCreationCall` appelle `/functions/v1/cre` — nom clairement tronqué.

> **Action requise :** Vérifier le nom réel de cette Edge Function dans le dashboard Supabase avant de migrer la fonctionnalité de parrainage.

---

### 5. Doublons dans la table `creator`
- `auth_id` et `supabase_auth_id` semblent être des doublons. Vérifier lequel est réellement utilisé pour le lookup post-connexion.

---

## Fonctionnalités manquantes (v1 Next.js à implémenter)

### Authentification
- [ ] **Mot de passe oublié** — Aucun flux "reset password" n'existe
- [ ] **Vérification d'email** — Pas de confirmation d'inscription
- [ ] **Social auth complet** — Apple Sign-In à tester en environnement web

### Profil créateur
- [ ] **Édition du profil complet** — Seul le nom est éditable (`EditNameWidget`). Bio, région, spécialités, photo de profil ne sont pas éditables dans l'UI actuelle
- [ ] **Upload de photo de profil** — Pas de composant d'upload pour `creator.profil_url`

### Recettes
- [ ] **Pagination** — La liste des recettes charge tout en une fois, pas de pagination ni de chargement infini
- [ ] **Recherche globale** — La recherche est disponible côté serveur mais l'UI n'est pas complète
- [ ] **Aperçu avant publication** — Pas de mode prévisualisation du rendu final de la recette

### Dashboard
- [ ] **Export des données** — Pas d'export CSV/PDF des revenus ou performances
- [ ] **Filtres de dates personnalisés** — La navigation hebdomadaire/mensuelle est disponible mais pas de plage de dates custom

### Stripe / Paiements
- [ ] **Wizard d'onboarding Stripe** — Actuellement c'est juste un lien externe. Un vrai tunnel d'onboarding intégré améliorerait l'expérience
- [ ] **Notifications de paiement** — Pas d'alerte quand un paiement est reçu

### Notifications
Les tables `notifications`, `notification_preferences`, `notification_templates` existent en base mais **aucun système de notification n'est implémenté** dans l'app créateur.

---

## Problèmes techniques

### Taille des fichiers
Les formulaires de création/édition sont extrêmement longs :
- `create_recipe_widget.dart` : ~6 700 lignes
- `edit_recipe_widget.dart` : ~8 500 lignes
- `nav.dart` : ~15 000 lignes
- `serialization_util.dart` : ~17 500 lignes

> **Action recommandée :** Dans Next.js, découper ces formulaires en sous-composants (un composant par section : métadonnées, ingrédients, étapes, images, tags).

### Absence de tests
Il n'existe aucun test unitaire ou d'intégration dans le projet Flutter.

> **Action recommandée :** Implémenter des tests dès le début de la migration Next.js (unit tests des utilitaires API, tests d'intégration des flux de publication).

### Gestion des erreurs
Les appels API n'ont pas de gestion d'erreurs robuste visible dans le code Flutter — les erreurs semblent souvent ignorées ou affichées minimalement.

> **Action recommandée :** Dans Next.js, utiliser des `try/catch` systématiques + afficher des toasts d'erreur clairs avec shadcn/ui.

### Firebase non utilisé
Le projet dépend de Firebase/Firestore (héritage FlutterFlow) mais ce service n'est pas utilisé activement dans l'application créateur. Ces dépendances ajoutent du poids inutile.

> **Action recommandée :** Supprimer complètement Firebase du projet Next.js.

---

## Améliorations UX

### Responsive partiel
L'application Flutter gère le responsive en dupliquant les layouts (version mobile et version desktop dans le même widget). Ce n'est pas une approche maintenable.

> **Action recommandée :** Dans Next.js, utiliser Tailwind CSS avec des breakpoints cohérents et un seul composant adaptatif.

### Internationalisation non structurée
Le code mélange du français et de l'anglais (noms de colonnes, commentaires, libellés). Il n'y a pas de système i18n en place.

> **Action recommandée :** Dans Next.js, utiliser `next-intl` dès le départ si le support multilingue est prévu.

### Sauvegarde automatique du brouillon
Il n'est pas clair si les modifications du formulaire de création sont sauvegardées automatiquement ou uniquement à des points explicites.

> **Action recommandée :** Implémenter un auto-save avec debounce dans le formulaire Next.js pour éviter la perte de données.

---

## Questions ouvertes

1. **Quel est le rôle exact de `ReceipeCountCall` ?** Son endpoint n'est pas visible dans le code examiné.
2. **`GetCompleteRecipeDataCall` vs `GetRecipesDetailsCall`** : ces deux appels semblent retourner des données similaires. Lequel est canonique ?
3. **`FoodRegionTrendingReceipeCall`, `TrendingTagCall`, `TrendingReceipeByTagsCall`** : ces appels "smart-worker" sont-ils utilisés dans l'UI actuelle ou sont-ils des vestiges ?
4. **`RecipesDetailCopyWidget`** : ce widget doublon est-il utilisé quelque part dans la navigation ?
5. **Structure Stripe** : les paiements sont-ils gérés en direct (Stripe Connect Standard) ou via des transferts Supabase → Stripe ? À clarifier avec la logique côté Edge Functions.
