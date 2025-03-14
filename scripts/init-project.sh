#!/bin/bash

# Demander le nouveau nom du projet
echo "Entrez le nouveau nom du projet :"
read project_name

# Vérifier si le nom est valide
if [[ -z "$project_name" ]]; then
  echo "Erreur: Le nom du projet ne peut pas être vide"
  exit 1
fi

echo "Modification du package.json..."
# Sur macOS, la syntaxe de sed est légèrement différente
sed -i '' 's/"name": "template-app"/"name": "'$project_name'"/' package.json

# Vérifier si la modification a réussi
if grep -q "\"name\": \"$project_name\"" package.json; then
  echo "✅ Nom du projet modifié avec succès : $project_name"
else
  echo "❌ Erreur lors de la modification du nom du projet"
  exit 1
fi

# Installation des dépendances
echo "Installation des dépendances..."
npm i

echo "✅ Projet initialisé avec succès !"
echo "Nom du projet : $project_name"