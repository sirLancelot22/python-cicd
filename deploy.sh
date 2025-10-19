#!/bin/bash
set -e  # stoppe le script si une commande échoue

echo "Déploiement en cours..."
cd /home/jerome/python-cicd/
git reset --hard main
git pull origin main  # récupère la dernière version
git reset --hard main
echo "" | sudo -S cp systemd /etc/systemd/system/random-calc.service
echo "" | sudo -S systemctl daemon-reload
echo "" | sudo -S systemctl restart random-calc.service
echo "Déploiement terminé !"
