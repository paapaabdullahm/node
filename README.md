## **NodeJS**
Dokerized Node with Browsersync, NPM & Yarn Package Managers

#### Current Tags:

  - Node (LTS): **`8.11.*`**
  - NPM:  **`5.6.0`**
  - Yarn: **`1.6.0`**
  - Browsersync: **`2.24.5`**

#### Shortcuts via .zshrc/.bashrc

```bash
# NodeJS
node() { docker run --rm -it -v "$(pwd)":/src pam79/node node "$@"; }
npm()  { docker run --rm -it -v "$(pwd)":/src pam79/node npm  "$@"; }
yarn() { docker run --rm -it -v "$(pwd)":/src pam79/node yarn "$@"; }
browser-sync() {
    docker run --rm -it --net proxy-tier -p 3000:3000 -p 3001:3001 \
    -v "$(pwd)":/src pam79/node browser-sync "$@";
}
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
