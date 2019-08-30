## **NodeJS**
Dokerized Node with Browsersync, NPM & Yarn Package Managers

#### Current Tags:

  - Node (LTS): **`10.16.*`**
  - NPM:  **`6.9.0`**
  - Yarn: **`1.17.0`**

#### Shortcuts via .zshrc/.bashrc

```bash
# NodeJS
node() { docker run --rm -it -v "$(pwd)":/src pam79/node node "$@"; }
npm()  { docker run --rm -it -v "$(pwd)":/src pam79/node npm  "$@"; }
yarn() { docker run --rm -it -v "$(pwd)":/src pam79/node yarn "$@"; }
```

> Don't forget to source your file after every change: `source .zshrc` or `source .bashrc`

#### Docker Compose

```bash
version: "2.4"

services:

  node:
    image: "pam79/node"
    container_name: node
    user: "node"
    working_dir: /home/node/app
    environment:
      - NODE_ENV=production
    volumes:
      - ./:/home/node/app
    expose:
      - "8000"
    command: "npm start"
```
