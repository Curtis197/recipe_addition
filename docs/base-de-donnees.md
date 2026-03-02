# Base de données — Akeli Creator (Supabase/PostgreSQL)

> **Important :** Le schéma Supabase sera **conservé tel quel** pendant la migration vers Next.js. Ne pas renommer les colonnes ni les tables. Certains noms de colonnes contiennent des espaces et des majuscules — ils doivent être utilisés exactement tels quels dans les requêtes.

---

## Tables principales : Recettes

### `receipe` — Recettes publiées

**Fichier Flutter :** `lib/backend/supabase/database/tables/receipe.dart`

| Colonne (nom exact en BDD) | Type Flutter | Type PostgreSQL | Notes |
|---|---|---|---|
| `id` | `int` | integer (PK) | Auto-increment |
| `created_at` | `DateTime` | timestamptz | |
| `name` | `String?` | text | Titre de la recette |
| `description` | `String?` | text | |
| `taste_rate` | `int?` | integer | Appréciation (1-5) |
| `time_of_cooking_min` | `int?` | integer | Minutes de préparation |
| `time_of_cooking_hour` | `int?` | integer | Heures de préparation |
| `difficulty_rate` | `int?` | integer | Difficulté numérique |
| `sasiety_rate` | `int?` | integer | Note de satiété |
| `calorie` | `int?` | integer | Calories |
| `total_rate` | `double?` | float | Note globale |
| **`sans porc`** | `bool?` | boolean | ⚠️ **Nom avec espace** : `getField('sans porc')` |
| `type` | `List<String>` | text[] | Types de repas (tableau) |
| `creator_id` | `String?` | text (FK → creator.id) | |
| **`Food Region`** | `String?` | text | ⚠️ **Majuscule + espace** : `getField('Food Region')` |
| `difficulty` | `String?` | text | Libellé du niveau de difficulté |
| `comment_count` | `int?` | integer | Compteur de commentaires |
| `like_count` | `int?` | integer | Compteur de likes |
| `meal_consumed` | `int?` | integer | Nombre de fois consommée |
| `free` | `bool?` | boolean | Recette gratuite (true) ou payante (false) |
| `total_earnings` | `double?` | float | Revenus générés |
| `daily_consumer_count` | `int?` | integer | Consommateurs journaliers |
| `published_at` | `DateTime?` | timestamptz | Date de publication |
| `unpublished_at` | `DateTime?` | timestamptz | Date de dépublication |
| `is_published` | `bool?` | boolean | Statut de publication |
| `last_consumed_at` | `DateTime?` | timestamptz | Dernière consommation |
| `is_deleted` | `bool?` | boolean | Suppression douce |
| `is_cleaned` | `bool?` | boolean | Flag post-publication nettoyage |

---

### `temporary_receipe` — Brouillons de recettes

**Fichier Flutter :** `lib/backend/supabase/database/tables/temporary_receipe.dart`

| Colonne (nom exact en BDD) | Type Flutter | Notes |
|---|---|---|
| `id` | `int` (PK) | |
| `created_at` | `DateTime` | |
| `name` | `String?` | |
| `description` | `String?` | |
| `taste_rate` | `int?` | |
| `tags_id` | `int?` | ⚠️ Absent de `receipe` |
| **`time_of_cooking min`** | `int?` | ⚠️ **Espace** (pas d'underscore) entre `cooking` et `min` |
| `difficulty_rate` | `int?` | |
| `sasiety_rate` | `int?` | |
| `calorie` | `int?` | |
| `total_rate` | `int?` | ⚠️ `int` ici vs `double` dans `receipe` |
| **`sans porc`** | `bool?` | ⚠️ **Nom avec espace** |
| `type` | `List<String>` | |
| `creator_id` | `String?` | |
| **`Food region`** | `String?` | ⚠️ Casse différente de `receipe` : `Food region` vs `Food Region` |
| **`time of cooking hour`** | `int?` | ⚠️ **Espaces** (pas d'underscores) |
| `difficulty` | `String?` | |
| `is_cleaned` | `bool?` | Flag de validation avant publication |

> **⚠️ Incohérences critiques entre `receipe` et `temporary_receipe` :**
> - `time_of_cooking_min` (receipe) vs `time_of_cooking min` (temporary_receipe)
> - `time_of_cooking_hour` (receipe) vs `time of cooking hour` (temporary_receipe)
> - `Food Region` (receipe) vs `Food region` (temporary_receipe)
> - `total_rate` est `double` dans `receipe` et `int` dans `temporary_receipe`

---

### `ingredients` — Ingrédients

**Fichier Flutter :** `lib/backend/supabase/database/tables/ingredients.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `name` | `String?` | Nom de l'ingrédient |
| `unit` | `String?` | Unité (g, ml, cup, cs, cc…) |
| `quantity` | `double?` | Quantité |
| `receipe_id` | `int?` | FK → `receipe.id` (null si brouillon) |
| `temporary_receipe_id` | `int?` | FK → `temporary_receipe.id` (null si publié) |
| `category` | `String?` | Catégorie d'ingrédient |
| `photo_url` | `String?` | URL image de l'ingrédient |
| `type` | `String?` | Type d'ingrédient |
| `index` | `int?` | Ordre d'affichage |
| `title` | `bool?` | Si `true` : ligne d'en-tête de section |
| `round_type_index` | `int?` | Type d'arrondi pour la quantité |
| `created_at` | `DateTime?` | |

> Un ingrédient est lié soit à `receipe_id` (recette publiée), soit à `temporary_receipe_id` (brouillon), jamais les deux.

---

### `step` — Étapes de recette

**Fichier Flutter :** `lib/backend/supabase/database/tables/step.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `text` | `String?` | Texte de l'instruction |
| `number` | `int?` | Numéro de l'étape |
| `receipe_id` | `int?` | FK → `receipe.id` |
| **`temprorary_receipe_id`** | `int?` | ⚠️ **Faute de frappe** dans le nom de colonne (double `r` dans `temprorary`) |
| `index` | `int?` | Ordre d'affichage |
| `title` | `bool?` | Si `true` : ligne d'en-tête de section |
| `created_at` | `DateTime?` | |

---

### `receipe_image` — Images de recettes

**Fichier Flutter :** `lib/backend/supabase/database/tables/receipe_image.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `url` | `String?` | URL Supabase Storage |
| `receipe_id` | `int?` | FK → `receipe.id` |
| `temporary_receipe_id` | `int?` | FK → `temporary_receipe.id` |
| `type` | `String?` | Type : `main` (image principale) ou galerie |
| `index` | `int?` | Ordre dans la galerie |
| `created_at` | `DateTime?` | |

---

## Tables de taxonomie

### `tags` — Tags disponibles

**Fichier Flutter :** `lib/backend/supabase/database/tables/tags.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `name` | `String?` | Nom du tag |
| `color` | `String?` | Couleur d'affichage |
| `language` | `String?` | Langue/région |
| `receipe_created` | `int?` | Nombre de recettes avec ce tag |
| `meal_consumed` | `int?` | Nombre de repas consommés |

---

### `receipe_tags` — Association recette ↔ tags

**Fichier Flutter :** `lib/backend/supabase/database/tables/receipe_tags.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `receipe_id` | `int?` | FK → `receipe.id` |
| `temporary_receipe_id` | `int?` | FK → `temporary_receipe.id` |
| `name` | `String?` | Nom du tag (dénormalisé) |
| `color` | `String?` | Couleur du tag (dénormalisé) |
| `created_at` | `DateTime?` | |

> Les tags sont **dénormalisés** : `name` et `color` sont copiés depuis `tags` au lieu d'être joints par FK.

---

### `difficulty` — Niveaux de difficulté

| Colonne | Type |
|---|---|
| `id` | integer (PK) |
| `name` | text |

---

### `food_region` — Régions culinaires

> ⚠️ **Le nom réel de la table en base est `food region`** (avec un espace). Dans les requêtes Supabase JS : `supabase.from('food region')`.

| Colonne | Type | Notes |
|---|---|---|
| `id` | integer (PK) | |
| `created_at` | timestamptz | |
| `name` | text | Nom de la région (ex : Sénégal, Antilles…) |
| `receipe_created` | integer | Nombre de recettes de cette région |
| `meal_consumed` | integer | Nombre de repas consommés |

---

## Tables créateur et revenus

### `creator` — Profil créateur

**Fichier Flutter :** `lib/backend/supabase/database/tables/creator.dart`

| Colonne | Type | Notes |
|---|---|---|
| `id` | `String` (uuid, PK) | |
| `auth_id` | `String?` | UID Supabase Auth — clé de lookup après connexion |
| `supabase_auth_id` | `String?` | Doublon de `auth_id` |
| `user_id` | `int?` | Référence utilisateur (table `users`) |
| `name` | `String?` | Nom du créateur |
| `bio` | `String?` | Biographie |
| `description` | `String?` | Description |
| `profil_url` | `String?` | URL photo de profil |
| `heritage_region` | `String?` | Région d'origine |
| **`Food Region`** | `String?` | ⚠️ **Majuscule + espace** |
| `specialties` | `List<String>` | Spécialités culinaires |
| `stripe_onboarding_complete` | `bool?` | Onboarding Stripe terminé |
| `payment_enabled` | `bool?` | Paiements activés |
| `total_earnings` | `double?` | Revenus totaux |
| `total_daily_consumers` | `int?` | Consommateurs journaliers totaux |
| `recipe_count` | `int?` | Nombre de recettes publiées |
| `created_at` | `DateTime?` | |
| `updated_at` | `DateTime?` | |

---

### Tables de revenus et analytics

> Ces tables sont principalement alimentées par des Edge Functions et des agrégats côté Supabase. Elles sont lues en lecture seule par l'application créateur.

| Table | Rôle |
|---|---|
| `creator_dashboard_stats` | Statistiques globales du créateur pour le dashboard |
| `creator_monthly_revenue` | Revenus mensuels |
| `creator_weekly_revenue` | Revenus hebdomadaires |
| `creator_weekly_revenue_chart` | Données pour le graphique hebdomadaire |
| `creator_stripe_account` | Informations Stripe Connect (account_id, statut, country_code…) |
| `creator_payout` | Historique des paiements (stripe_payout_id, period_start/end, total_earnings…) |
| `payment_history_enriched` | Vue enrichie de l'historique des paiements |
| `recipe_performance` | Métriques de performance par recette |
| `recipe_weekly_revenue` | Revenus hebdomadaires par recette |
| `top_recipes_by_revenue` | Vue : meilleures recettes par revenus |

---

## Tables sociales

### `receipe_likes` — Likes des recettes

**Fichier Flutter :** `lib/backend/supabase/database/tables/receipe_likes.dart`

| Colonne | Type |
|---|---|
| `id` | String (uuid, PK) |
| `receipe_id` | int? |
| `user_id` | int? |

---

### `receipe_comments` — Commentaires

| Colonne | Type | Notes |
|---|---|---|
| `id` | int (PK) | |
| `created_at` | timestamptz | |
| `receipe_id` | int? | FK → `receipe.id` |
| `user_id` | int? | |
| `text` | text | Contenu du commentaire |
| `rate` | float | Note associée au commentaire |

---

## Tables parrainage

| Table | Rôle |
|---|---|
| `referral` | Programme de parrainage |
| `user_referral` | Parrainage utilisateur (referrer_id, referee_id, referral_code, revenue_earned…) |
| `user_referral_code` | Codes de parrainage |
| `user_referral_monthly_stats` | Stats mensuelles de parrainage |

---

## Schéma des relations (recette)

```
creator (id)
    ↓ creator_id
receipe (id) ←──────────── receipe_likes (receipe_id)
    ↓ receipe_id            receipe_comments (receipe_id)
    ├── ingredients          receipe_tags (receipe_id)
    ├── step                 receipe_image (receipe_id)
    └── receipe_image

temporary_receipe (id)
    ↓ temporary_receipe_id
    ├── ingredients (temporary_receipe_id)
    ├── step (temprorary_receipe_id)  ← faute de frappe dans la colonne
    ├── receipe_image (temporary_receipe_id)
    └── receipe_tags (temporary_receipe_id)

                  PublishReceipeCall
temporary_receipe ──────────────────→ receipe
```

---

## Récapitulatif des anomalies de nommage

> Ces anomalies existent en base de données et **ne doivent PAS être corrigées** sans une migration de BDD explicite. Elles doivent être connues de tout développeur qui écrit des requêtes Supabase.

| Table | Colonne exacte en BDD | Anomalie |
|---|---|---|
| `receipe` | `sans porc` | Espace (pas d'underscore) |
| `receipe` | `Food Region` | Majuscule + espace |
| `temporary_receipe` | `time_of_cooking min` | Espace entre `cooking` et `min` |
| `temporary_receipe` | `time of cooking hour` | Espaces (pas d'underscores) |
| `temporary_receipe` | `Food region` | Casse différente de `receipe.Food Region` |
| `step` | `temprorary_receipe_id` | Faute de frappe : `temprorary` (double `r`) |
| `food_region` | (nom de table) | La table s'appelle `food region` (avec espace) |
| `creator` | `Food Region` | Majuscule + espace |
