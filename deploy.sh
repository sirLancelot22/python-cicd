#!/bin/bash
set -e  # stoppe le script si une commande échoue

echo "Déploiement en cours..."
cd /home/jerome/python-cicd/
git reset --hard main
git pull origin main  # récupère la dernière version
git reset --hard main
#sudo cp systemd /etc/systemd/system/random-calc.service
#sudo systemctl daemon-reload
#sudo systemctl restart random-calc.service
echo "Déploiement terminé !"
