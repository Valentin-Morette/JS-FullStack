#!/bin/bash

# Permet de déployer un projet avec le template frontend de la Wild sur github pages

# Dans package.json, ajouter :

# "scripts": {
    # "deploy": "gh-pages -d dist"
# }

# Dans vite.config.js, ajouter :

# base : 'https://Valentin-Morette.github.io/NomDuRepo/'

# bash installGithubPagesWCS.sh pour lancer le script

if [ -e node_modules/.cache/gh-pages/ ]; 
then
  echo "gh-pages déjà installé"
else
npm i gh-pages
fi

npm run build
npm run deploy

# Si erreur -> "fatal: Une branche nommée 'gh-pages' existe déjà."
# Supprimer le fichier node_modules/.cache/gh-pages
