# Docker-Project
Création d'un Dockerfile permettant de construire et exécuter une application dans un conteneur Docker.

TP docker
Création d'une image Docker pour une application Node.js avec Nginx
Contexte :
Vous êtes chargé de créer un environnement Docker pour une application Node.js qui sera
ensuite servie par un serveur Nginx. L'application est un projet de type "Single Page
Application" (SPA) qui nécessite d'abord d'être construite (build) avec Node.js, puis
déployée via Nginx.
Le code source de l'application est disponible dans un dépôt GitLab que vous pouvez
cloner. Votre tâche consiste à créer un Dockerfile permettant de construire et exécuter
cette application dans un conteneur Docker.
Objectif :
1. Cloner le dépôt GitLab contenant le code source :
Projet-gitlab
2. Créer un Dockerfile qui contient les étapes suivantes :
a.
Phase de construction
: Utiliser une image de Node.js (node:12.7-alpine)
pour installer les dépendances et le build de l’application.
b.
Phase d'exécution
: Utiliser une image Nginx (
nginx:1.17.1-alpine) pour
servir l'application construite.
3. Builder l’image docker et lancer le conteneur sur votre machine locale.
