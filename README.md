# Template App Next.js

Un template complet pour démarrer rapidement des applications web modernes avec Next.js 15, React 19, Convex et Clerk.

## 🚀 Technologies intégrées

Cette application intègre les technologies suivantes :

- **[Next.js 15](https://nextjs.org/)** - Framework React avec rendu hybride
- **[React 19](https://react.dev/)** - Bibliothèque UI avec les dernières fonctionnalités
- **[Convex](https://www.convex.dev/)** - Base de données en temps réel
- **[Clerk](https://clerk.com/)** - Authentification complète
- **[TailwindCSS](https://tailwindcss.com/)** - Framework CSS utilitaire
- **[Next-themes](https://github.com/pacocoursey/next-themes)** - Gestion du thème clair/sombre
- **[Cypress](https://www.cypress.io/)** - Tests end-to-end
- **[Qstash](https://upstash.com/docs/introduction)** -Webhooks
- **[Gsap](https://gsap.com/)** - Animation

## 🛠️ Installation

### 1. Initialisation du projet

Pour initialiser le projet avec votre propre nom d'application :

```bash
# Rendre le script d'initialisation exécutable
chmod +x ./scripts/init-project.sh

# Exécuter le script d'initialisation
./scripts/init-project.sh
```

Alternativement, vous pouvez utiliser la commande npm :

```bash
npm run init
```

Ce script vous demandera un nom pour votre projet, mettra à jour le [package.json](package.json) et installera les dépendances.

### 2. Configuration de l'environnement

Créez un fichier **.env** à la racine du projet avec les variables d'environnement requises, exemple dans **[env.exemple](env.exemple)** :
```
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=
CYPRESS_RECORD_KEY=

# Required for sending
QSTASH_URL=
QSTASH_TOKEN=

# Required for receiving
QSTASH_CURRENT_SIGNING_KEY=
QSTASH_NEXT_SIGNING_KEY=
```

### 🏃‍♂️ Développement
Pour lancer l'environnement de développement :
```bash
npm run dev
```

Cette commande démarre simultanément :
* Le serveur Next.js sur https://localhost:3000
* Le serveur de développement Convex

#### 🧪 Tests
```bash
# Exécuter Cypress en mode interactif
npm run cypress

# Exécuter les tests Cypress en mode headless
npm run cy:run

# Lancer l'application et exécuter les tests
npm run test-cypress
```
### 🔍 Linting et formatage
```bash
npm run test
```
Cette commande exécute Prettier pour formater le code et ESLint pour détecter les problèmes potentiels.

### 🚢 Déploiement
Build pour la production
```bash
npm run build
```
Démarrer en mode production
```bash
npm run start
```
### 📚 Ressources supplémentaires
* [Documentation Next.js](https://nextjs.org/docs)
* [Convex dev](https://dashboard.convex.dev/t/anatholyb1)
* [Documentation Convex](https://docs.convex.dev/home)
* [Clerk dashboard](https://dashboard.clerk.com/apps/app_2twlAq4YXbvcquyksPXs3bO0Lx1/instances/ins_2twlApg4WSPif14n824LLfM0wtm)
* [Documentation Clerk](https://clerk.com/docs)
* [Shadcn doc](https://ui.shadcn.com/docs)

