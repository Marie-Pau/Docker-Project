# Étape 1 : Build de l'application Angular
FROM node:12.7-alpine as build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Compiler l'app Angular
RUN npm run build --prod

# Étape 2 : Servir via Nginx
FROM nginx:1.17.1-alpine

# Supprimer la config par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier le build Angular dans le dossier nginx
COPY --from=build /app/dist/kanban-ui /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]