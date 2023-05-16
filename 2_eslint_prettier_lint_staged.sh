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
read -p "Crear el archivo de configuración de Prettier"
echo -e "{\n\"semi\": false,\n\"singleQuote\": true\n}" > .prettierrc.json

echo -e "\n"
read -p "Crear el archivo de ignorados de Prettier"
echo "*.js" > .prettierignore

echo -e "\n"
read -p "Agregar la configuración de ESLint para trabajar con Prettier"
npm add eslint-config-prettier

echo -e "\n"
read -p "Agregar Prettier como dependencia de desarrollo"
npm add prettier -D

# read -p "Verificar si hay errores de formato en los archivos con Prettier"
# npx prettier . --check

# read -p "Formatear los archivos con Prettier"
# npx prettier . --write

echo -e "\n"
read -p "Iniciar git"
echo ".eslintcache" > .gitignore
echo "node_modules" >> .gitignore
echo "1_eslint_lint_staged.sh" >> .gitignore
echo "2_eslint_prettier_lint_staged" >> .gitignore

git init

echo -e "\n"
read -p "Configura lint-staged con mrm"
npm i -D husky lint-staged 
npx mrm lint-staged

echo -e "\n"
read -p "Hacer el primer commit"
git add .
git commit -m "New project" --no-verify


# npx eslint . -> Comprueba si hay errores
# npx eslint . --fix -> Corrige los que puede


echo -e "\n"
read -p "No olvides de configurar .prettierrc.json segun tu guía de estilo (Airbnb,Standard...)"
echo -e "\n"
read -p "y añadir prettier en .eslintrc.js (Ej: extends: ['standard', 'eslint-config-prettier'],)"
echo -e "\n"
read -p "Finalizar"

