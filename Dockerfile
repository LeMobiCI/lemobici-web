# Utilisation de la dernière version LTS de Node.js
FROM node:24-alpine

# Définition du répertoire de travail
WORKDIR /lemobici-web

# Copie des fichiers de configuration des dépendances
COPY .npmrc ./
COPY package*.json ./

# Installation de toutes les dépendances du projet
RUN npm install -g @angular/cli
RUN npm install

# Copie du reste du code source
COPY . .

# Exposition du port de l'application
EXPOSE 4200

# Commande pour le développement avec hot-reload
CMD ["ng", "serve", "--host", "0.0.0.0"]