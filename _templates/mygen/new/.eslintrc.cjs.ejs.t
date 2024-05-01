---
to: <%=package%>/.eslintrc.cjs
---
module.exports = {
  'settings': {
    'react': {
      'version': 'detect',
    },
  },
  'env': {
    'browser': true,
    'es2021': true,
  },
  'extends': [
    'eslint:recommended',
    'plugin:@typescript-eslint/eslint-recommended',
    'plugin:@typescript-eslint/recommended-type-checked',
    'plugin:react-hooks/recommended',
    'plugin:react/recommended',
  ],
  'overrides': [
    {
      'env': {
        'node': true,
      },
      'files': [
        '.eslintrc.{js,cjs}',
      ],
      'parserOptions': {
        'sourceType': 'script',
      },
    },
  ],
  'parser': '@typescript-eslint/parser',
  'parserOptions': {
    'ecmaVersion': 'latest',
    'sourceType': 'module',
    'tsconfigRootDir': __dirname,
    'project': true,
  },
  'plugins': [
    '@typescript-eslint',
    'react',
    'jsx-a11y',
  ],
  'rules': {
    'no-irregular-whitespace': 'error',
    'no-mixed-spaces-and-tabs': ['error', 'smart-tabs'],
    'no-unused-vars': 'warn',
    '@typescript-eslint/no-unused-vars': 'warn',
  },
};

