---
to: packages/<%= name %>/package.json
---

{
  "name": "nx-monorepo-templates/<%= name %>",
  "description": "<%= description %>",
  "version": "0.0.0",
  "exports": {
    ".": {
      "require": "./dist/index.js",
      "import": "./dist/index.mjs"
    }
  },
  "main": "./dist/index.js",
  "module": "./dist/index.mjs",
  "types": "./dist/index.d.ts",
  "files": [
    "dist",
    "src"
  ],
  "scripts": {
    "build": "concurrently \"yarn:build:*\"",
    "build:bundle:dts": "dts-bundle-generator -o dist/index.d.ts src/index.ts",
    "build:bundle:js": "node ./esbuild.config.js"
  },
  "devDependencies": {
    "@typescript-eslint/eslint-plugin": "^5.40.1",
    "concurrently": "^7.5.0",
    "dts-bundle-generator": "^7.0.0",
    "esbuild": "^0.15.12",
    "esbuild-node-externals": "^1.5.0",
    "eslint-plugin-import": "^2.26.0",
    "eslint-plugin-prettier": "^4.2.1",
    "eslint-plugin-unused-imports": "^2.0.0"
  }
}
