#!/bin/bash

read -p "Instalar ESLint como dependencia de desarrollo"
npm install eslint -D

echo -e "\n"
read -p "Iniciar la configuración de ESLint"
npx eslint --init

echo -e "\n"
read -p "Ejecutar ESLint en el directorio actual"
npx eslint .

echo -e "\n"
read -p "Crear el archivo de ignorados de Prettier, y lo deshabilitamos en js"
touch "*.js" > .prettierignore

echo -e "\n"
read -p "Iniciar git"
echo ".eslintcache" > .gitignore
echo "node_modules" > .gitignore
git init

echo -e "\n"
read -p "Configura lint-staged con mrm"
npm i -D husky lint-staged 
npx mrm lint-staged

echo -e "\n"
read -p "Hacer el primer commit"
git add .
git commit -m "New project" --no-verify

read -p "Finalizar"

# npx eslint . -> Comprueba si hay errores
# npx eslint . --fix -> Corrige los que puede



