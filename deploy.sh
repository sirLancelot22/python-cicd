#!/bin/bash
set -e  # stoppe le script si une commande échoue

echo "Déploiement en cours..."
cd /home/jerome/python-cicd/
git reset --hard main
git pull origin main  # récupère la dernière version
git reset --hard main
cat systemd > /etc/systemd/system/random-calc.service
systemctl daemon-reload
systemctl restart random-calc.sh
echo "Déploiement terminé !"
