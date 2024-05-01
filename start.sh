#!/bin/bash

BOOTSTRAP_DIR=$(pwd)
PARENT_DIR=$(dirname "$BOOTSTRAP_DIR")

echo "Welcome frontend CLI"
if [ -z "$1" ]; then
    read -p "Project name:" PROJECT_NAME
else
    PROJECT_NAME="$1"
fi

cd "$PARENT_DIR"||exit
yarn create vite "$PROJECT_NAME" --template react-swc-ts
PROJECT_DIR="$BOOTSTRAP_DIR/../$PROJECT_NAME"

cd "$PROJECT_DIR"||exit

echo "====== step: installing dependencies ======"
yarn add axios react-redux redux @reduxjs/toolkit react react-dom react-router-dom vite-tsconfig-paths
yarn add --dev @types/node @vitejs/plugin-react-swc vite-plugin-svgr eslint eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-react-refresh husky lint-staged prettier vite-plugin-checker

echo "====== step: loading assets ======"
cd "$BOOTSTRAP_DIR"||exit
cp -r assets "$PROJECT_DIR/src"

# modify vite config
if [[ $OSTYPE == 'darwin'* ]]; then
  sed -i "" "1s/^/import checker from 'vite-plugin-checker' \n" "${PROJECT_DIR}/vite.config.ts"
  sed -i "" '/"dev": "vite",/a \ \ \ \ "check-types": "tsc --noEmit",' "${PROJECT_DIR}/package.json"
  sed -i "" "s/plugins:.*/plugins: [react(), tsconfigPaths(), svgr(), checker({ typescript: true, eslint: { lintCommand: \"eslint --ext .ts,.tsx .\" } })],/g" "${PROJECT_DIR}/vite.config.ts"
  sed -i "" "s/include\":.*/include\": [\"src\", \"vite-env.d.ts\", \"vite.config.ts\"],/g" "${PROJECT_DIR}/tsconfig.json"
else
  sed -i "1s/^/import checker from 'vite-plugin-checker' \n" "${PROJECT_DIR}/vite.config.ts"
  sed -i '/"dev": "vite",/a \ \ \ \ "check-types": "tsc --noEmit",' "${PROJECT_DIR}/package.json"
  sed -i "s/plugins:.*/plugins: [react(), tsconfigPaths(), svgr(), checker({ typescript: true, eslint: { lintCommand: \"eslint --ext .ts,.tsx .\" } })],/g" "${PROJECT_DIR}/vite.config.ts"
  sed -i "s/include\":.*/include\": [\"src\", \"vite-env.d.ts\", \"vite.config.ts\" ],/g" "${PROJECT_DIR}/tsconfig.json"
fi


echo "====== step: generating code ======"
HYGEN_OVERWRITE=1 npx hygen@6.2.11 mygen new --package "${PROJECT_DIR}" --projectName "${PROJECT_NAME}"


echo "====== finalizing: initializing git ======"
cd "$PROJECT_DIR"||exit
git init
git add .
git commit -am "init :tada:"
git branch -m main
