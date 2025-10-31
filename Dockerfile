# Étape 1 : partir de l'image Nginx officielle
FROM nginx:latest

# Étape 2 : copier les fichiers du site dans le dossier Nginx
COPY . /usr/share/nginx/html

# Étape 3 : exposer le port 80
EXPOSE 80

# Étape 4 : lancer Nginx en mode "foreground"
CMD ["nginx", "-g", "daemon off;"]
