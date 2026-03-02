# API — Appels Edge Functions Supabase

**Fichier source :** `lib/backend/api_requests/api_calls.dart`

**Authentification :** Toutes les requêtes envoient un header `Authorization: Bearer <ApiKey>` (clé anon Supabase).

**Base URL :** définie dans `lib/environment_values.dart` → `FFDevEnvironmentValues().ApiUrl`

---

## Vue d'ensemble des appels

| Classe Flutter | Endpoint Edge Function | Paramètres clés | Retour principal |
|---|---|---|---|
| `ReceipeinfoCall` | `/functions/v1/hyper-endpoint` | `recipe_id`, `text` | Infos recette (IA) |
| `ReceipeTypeCall` | `/functions/v1/receiep_type` | `receipe_id`, `type`, `is_in` | `result`, `type`, `current_types[]` |
| `ReceipeTypeModificationCall` | `/functions/v1/receipe_type_modification` | `receipe_id`, `type`, `is_in` | `success`, `updated_types[]`, `recipe` |
| `ReceipeConsumptionCall` | `/functions/v1/receipe_consumption` | `creator_id` | `recipes[]`, `total_consumption_count` |
| `FoodRegionTrendingReceipeCall` | `/functions/v1/smart-worker` | `food_region` | `recipes[]` |
| `TrendingTagCall` | `/functions/v1/smart-worker` | `tag_name` | tendances par tag |
| `TrendingReceipeByTagsCall` | `/functions/v1/smart-worker` | tags | `recipes[]` |
| `TemporaryReceipeTypeCall` | `/functions/v1/receiep_type` | `temporary_recipe_id`, `type`, `is_in` | types du brouillon |
| `TemporaryReceipeTypeModificationCall` | `/functions/v1/receipe_type_modification` | `temporary_recipe_id`, `type` | types mis à jour |
| `TrendingFoodingRegionCall` | `/functions/v1/receipe_trend` | — | régions tendance |
| `ReferralCreationCall` | `/functions/v1/cre` | `action`, `custom_name`, `name` | ⚠️ **Endpoint suspect** |
| `ReceipeCleanerCall` | `/functions/v1/receipe_cleaner` | `recipe_id` | `success`, `steps[]` |
| `ReceipeCountCall` | — | — | compteur |
| `PublishReceipeCall` | `/functions/v1/publish_recipe` | `temporaryRecipeId` | `success`, `recipe.id` |
| `StepReorderingCall` | `/functions/v1/step_index_management` | `action`, `temporary_recipe_id`, `steps[]` | liste étapes |
| `IngredientReorderingCall` | `/functions/v1/modify_ingredients_index` | `action`, `temporary_receipe_id`, `ingredients[]` | liste ingrédients |
| `StepManagementCall` | `/functions/v1/step_index_management` | `action`, `step_id`, `text`, `temporary_recipe_id` | étape créée/modifiée |
| `IngredientManagementCall` | `/functions/v1/modify_ingredients_index` | `action`, `ingredient_id`, données ingrédient | ingrédient créé/modifié |
| `DeleteStepCall` | `/functions/v1/step_index_management` | `action: "delete"`, `step_id` | confirmation |
| `SelectStepTemporaryReceipeCall` | `/functions/v1/get-recipe-steps` | `recipe_id` (= temporaryRecipeId) | `steps_data[]` |
| `SelectStepReceipeCall` | `/functions/v1/get-recipe-steps` | `recipe_id` | `steps_data[]` |
| `SelectIngredientCall` | `/functions/v1/get-recipe-ingredients` | `recipe_id` | `ingredients_data[]` |
| `UpdateIngredientIndexCall` | `/functions/v1/modify_ingredients_index` | `action`, index data | index mis à jour |
| `HardDeleteRecipeCall` | `/functions/v1/hard-delete-recipe` | `recipe_id` | confirmation |
| `CreatoRecipeStatsCall` | `/functions/v1/creator-recipe-stats` | `creator_id`, `period` | stats de consommation |
| `GetCompleteRecipeDataCall` | `/functions/v1/get-complete-recipe-data` | `recipe_id` | données recette complètes |
| `GetCreatorRecipesCall` | `/functions/v1/get-creator-recipes` | voir détail | recettes + stats créateur |
| `GetRecipesDetailsCall` | `/functions/v1/get-recipes-details` | `recipe_id` | détails + graphique hebdomadaire |
| `GetDashboardStatsCall` | `/functions/v1/get-dashboard-stats` | `creator_id` | stats dashboard |
| `GetMonthlyDashboardCall` | `/functions/v1/get-monthly-dashboard` | `creator_id` | `daily_meals_consumed` |
| `GetRecipesPerfomancesCall` | `/functions/v1/get-recipes-perfomaces` | `creator_id` | performances par recette |
| `GetPaymentHistoryCall` | `/functions/v1/get-payment-history` | `creator_id` | historique paiements |
| `GetMonthlyReferralRevenueCall` | `/functions/v1/get-monthly-referral-revenue` | `user_id` | `monthly_data[]` |
| `GetUserReferralCodeCall` | `/functions/v1/get-user-referral-code` | `user_id` | code de parrainage |
| `GetRecipesStepsCall` | `/functions/v1/get-recipe-steps` | `recipe_id` | `steps_data[]` |
| `GetRecipeIngredientsCall` | `/functions/v1/get-recipe-ingredients` | `recipe_id` | `ingredients_data[]` |
| `GetCreatorWeeklyChartCall` | `/functions/v1/get-creator-weekly-chart` | `creator_id`, `week_number`, `year` | données graphique |
| `GetRecipeWeeklyChartCall` | `/functions/v1/get-recipe-weekly-chart` | `recipe_id`, `week_number`, `year` | données graphique |
| `TemporaryRecipeCleanerCall` | `/functions/v1/dynamic-processor` | `recipe_id` | résultat validation |

---

## Détail des appels principaux

### `PublishReceipeCall` — Publication d'un brouillon
**Endpoint :** `POST /functions/v1/publish_recipe`

**Corps :**
```json
{ "temporaryRecipeId": 123 }
```

**Retour :**
```json
{ "success": true, "recipe": { "id": 456 } }
```

**Rôle :** Déplace la recette de `temporary_receipe` vers `receipe`, et migre les ingrédients, étapes, images et tags vers leurs tables définitives.

---

### `TemporaryRecipeCleanerCall` — Validation avant publication
**Endpoint :** `POST /functions/v1/dynamic-processor`

**Corps :**
```json
{ "recipe_id": 123 }
```

**Rôle :** Vérifie que le brouillon est complet (nom, ingrédients, étapes, images). Retourne un résultat de validation. Doit être appelé avant `PublishReceipeCall`.

---

### `GetCreatorRecipesCall` — Liste des recettes du créateur
**Endpoint :** `POST /functions/v1/get-creator-recipes`

**Corps :**
```json
{
  "creator_id": "uuid",
  "sort_by": "created_at",
  "filter": "published",
  "search_name": "riz",
  "food_region": "Sénégal",
  "recipe_type": "lunch"
}
```

**Retour :**
```json
{
  "recipes": [...],
  "published_count": 5,
  "total_count": 8,
  "temporary_count": 3,
  "creator_stats": {
    "total_earnings": 42.50,
    "total_daily_consumers": 120
  }
}
```

---

### `GetRecipesDetailsCall` — Détail d'une recette + graphique
**Endpoint :** `POST /functions/v1/get-recipes-details`

**Corps :**
```json
{ "recipe_id": 456 }
```

**Retour (structure clé) :**
```json
{
  "recipe": {
    "id": 456,
    "name": "...",
    "current_week": {
      "chart_data": [...]
    }
  }
}
```

---

### `GetDashboardStatsCall` — Statistiques dashboard
**Endpoint :** `POST /functions/v1/get-dashboard-stats`

**Corps :**
```json
{ "creator_id": "uuid" }
```

---

### `GetMonthlyDashboardCall` — Stats mensuelles
**Endpoint :** `POST /functions/v1/get-monthly-dashboard`

**Corps :**
```json
{ "creator_id": "uuid" }
```

**Retour clé :**
```json
{ "daily_meals_consumed": [...] }
```

---

### `GetRecipesPerfomancesCall` — Performance des recettes
**Endpoint :** `POST /functions/v1/get-recipes-perfomaces`

> ⚠️ Faute de frappe dans le nom de l'endpoint : `perfomaces` (sans `n`).

**Corps :**
```json
{ "creator_id": "uuid" }
```

---

### `StepManagementCall` / `StepReorderingCall` / `DeleteStepCall`
**Endpoint :** `POST /functions/v1/step_index_management`

**Corps selon l'action :**
```json
// Créer une étape
{ "action": "create", "text": "...", "temporary_recipe_id": 123 }

// Modifier une étape
{ "action": "update", "step_id": "uuid", "text": "..." }

// Supprimer une étape
{ "action": "delete", "step_id": "uuid" }

// Réordonner les étapes
{ "action": "reorder", "temporary_recipe_id": 123, "steps": [...] }
```

---

### `IngredientManagementCall` / `IngredientReorderingCall` / `UpdateIngredientIndexCall`
**Endpoint :** `POST /functions/v1/modify_ingredients_index`

**Corps selon l'action :**
```json
// Créer un ingrédient
{
  "action": "create",
  "temporary_receipe_id": 123,
  "name": "farine",
  "quantity": 200,
  "unit": "g",
  "category": "féculent"
}

// Réordonner
{ "action": "reorder", "temporary_receipe_id": 123, "ingredients": [...] }
```

---

### `GetCreatorWeeklyChartCall` / `GetRecipeWeeklyChartCall`
**Endpoints :**
- `POST /functions/v1/get-creator-weekly-chart`
- `POST /functions/v1/get-recipe-weekly-chart`

**Corps :**
```json
{
  "creator_id": "uuid",   // ou "recipe_id": 456
  "week_number": 10,
  "year": 2026
}
```

---

### `GetMonthlyReferralRevenueCall`
**Endpoint :** `POST /functions/v1/get-monthly-referral-revenue`

**Corps :**
```json
{ "user_id": "uuid" }
```

**Retour :**
```json
{
  "monthly_data": [
    { "month": "2026-01", "revenue": 12.50 },
    ...
  ]
}
```

---

### `ReferralCreationCall` — ⚠️ Endpoint suspect
**Endpoint :** `POST /functions/v1/cre`

> **Attention :** Le nom de l'endpoint `/functions/v1/cre` semble tronqué dans le code source Flutter. Le nom complet de l'Edge Function doit être vérifié directement dans le dashboard Supabase avant la migration. La fonctionnalité de création/personnalisation du code de parrainage pourrait ne pas fonctionner.

---

### `CreatoRecipeStatsCall`
**Endpoint :** `POST /functions/v1/creator-recipe-stats`

**Corps :**
```json
{ "creator_id": "uuid", "period": "weekly" }
```

**Retour :**
```json
{
  "daily_consumption": [...],
  "total_consumed": 42,
  "revenue_earned": 18.75,
  "progress_to_next_euro": 0.25
}
```

---

## Appels moins utilisés / utilitaires

| Classe | Endpoint | Usage |
|---|---|---|
| `ReceipeCleanerCall` | `/functions/v1/receipe_cleaner` | Nettoyage post-publication (retourne steps[]) |
| `ReceipeCountCall` | — | Compteur (usage à clarifier) |
| `FoodRegionTrendingReceipeCall` | `/functions/v1/smart-worker` | Recettes tendance par région (usage UI à clarifier) |
| `TrendingTagCall` | `/functions/v1/smart-worker` | Tags tendance |
| `TrendingReceipeByTagsCall` | `/functions/v1/smart-worker` | Recettes par tags (usage UI à clarifier) |
| `TrendingFoodingRegionCall` | `/functions/v1/receipe_trend` | Régions culinaires tendance |
| `GetCompleteRecipeDataCall` | `/functions/v1/get-complete-recipe-data` | Données recette complètes (usage en double avec GetRecipesDetailsCall ?) |

---

## Notes pour la migration Next.js

1. **Tous ces appels doivent être centralisés** dans un fichier `src/lib/api/edge-functions.ts` avec des types TypeScript stricts.

2. **Pattern recommandé :**
   ```typescript
   export async function getCreatorRecipes(params: GetCreatorRecipesParams) {
     const { data, error } = await supabase.functions.invoke('get-creator-recipes', {
       body: params
     })
     if (error) throw error
     return data as GetCreatorRecipesResponse
   }
   ```

3. **L'apiKey** dans Flutter correspond à la clé anon Supabase. Dans Next.js avec `@supabase/ssr`, l'authentification est gérée via le client Supabase directement (pas besoin de passer la clé manuellement).

4. **Fautes de frappe à conserver dans les endpoints :**
   - `receiep_type` (pas `recipe_type`)
   - `get-recipes-perfomaces` (pas `performances`)
   - `modify_ingredients_index` (pas `ingredient`)
