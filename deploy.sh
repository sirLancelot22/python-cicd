#!/bin/bash
set -e  # stoppe le script si une commande échoue

echo "Déploiement en cours..."
cd /home/jerome/python-cd/
git reset --hard main
git pull origin main  # récupère la dernière version
git reset --hard main
echo "Déploiement terminé !"
