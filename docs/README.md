# Akeli Creator — Documentation

## Présentation du projet

**Akeli Creator** est la plateforme web destinée aux créateurs culinaires de l'écosystème **akeli**. Elle permet aux créateurs de :

- Créer, gérer et publier des recettes
- Consulter leurs statistiques de performance et de revenus
- Gérer leur programme de parrainage
- Suivre les paiements via Stripe

Les recettes publiées sont ensuite **consommées par l'application mobile akeli** (l'application partenaire), qui permet aux utilisateurs finaux de découvrir et cuisiner les recettes.

---

## Statut actuel

| Élément | Statut |
|---|---|
| Framework | Flutter (FlutterFlow) — MVP fonctionnel |
| Backend | Supabase (PostgreSQL + Auth + Storage) |
| Migration cible | Next.js (en préparation) |
| Tests | Absents |
| Documentation | Ce dossier `/docs/` — en cours de rédaction |

---

## Index de la documentation

| Fichier | Contenu |
|---|---|
| [`architecture.md`](./architecture.md) | Stack technique, structure du projet, authentification, navigation |
| [`fonctionnalites.md`](./fonctionnalites.md) | Inventaire des pages, composants réutilisables et flux UX |
| [`base-de-donnees.md`](./base-de-donnees.md) | Schéma Supabase : tables, champs, relations clés |
| [`api.md`](./api.md) | Appels API et Edge Functions Supabase |
| [`ameliorations.md`](./ameliorations.md) | Manques v1, incohérences, axes d'amélioration pour la migration |

---

## Contexte de migration

La migration vers **Next.js** vise à :

1. Obtenir un meilleur contrôle sur le code (sortir de FlutterFlow)
2. Améliorer les performances web (SSR, optimisation des images)
3. Faciliter les évolutions futures (SEO, internationalisation, nouvelles fonctionnalités)
4. Réutiliser le backend Supabase existant sans modification de schéma

Le backend Supabase (base de données, auth, storage, Edge Functions) sera **conservé tel quel** pour la migration.
