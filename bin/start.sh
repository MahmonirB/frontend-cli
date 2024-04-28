#!/bin/bash

ROOT_DIR=$(pwd)
PARENT_DIR=$(dirname "$ROOT_DIR")

echo "Welcome to frontend CLI!"
if [ -z "$1" ]; then
    read -p "Project name:" PROJECT_NAME
else
    PROJECT_NAME="$1"
fi
cd "$PARENT_DIR"||exit

echo "Step1: installing dependencies for React application ..."
yarn create vite "$PROJECT_NAME" --template react-swc-ts
PROJECT_DIR="$ROOT_DIR/../$PROJECT_NAME"

cd "$PROJECT_DIR"||exit
yarn add axios react-redux redux @reduxjs/toolkit react react-dom react-router-dom vite-tsconfig-paths
yarn add --dev @types/node @vitejs/plugin-react-swc vite-plugin-svgr eslint eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-react-refresh husky lint-staged prettier vite-plugin-checker


echo "Step2: generating code..."
HYGEN_OVERWRITE=1 npx hygen@6.2.11 feGen new --package "${PROJECT_DIR}" --projectName "${PROJECT_NAME}"

echo "Final Step: initializing git...."
cd "$PROJECT_DIR"||exit
git init
git add .
git commit -am "initial commit :tada:"
git branch -m main
