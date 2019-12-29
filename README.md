## **NodeJS**
Dokerized Node with NPM & Yarn Package Managers

#### Current Tags:

  - Node (LTS): **`12.14.*`**
  - NPM:  **`6.13.4`**
  - Yarn: **`1.21.1`**

#### Shortcuts via .zshrc/.bashrc

```bash
# NodeJS
node() { docker run --rm -it -v "$(pwd)":/src pam79/node node "$@"; }
npm()  { docker run --rm -it -v "$(pwd)":/src pam79/node npm  "$@"; }
yarn() { docker run --rm -it -v "$(pwd)":/src pam79/node yarn "$@"; }
```

> Don't forget to source your file for changes to reflect:
>
> `$ source .zshrc` or `source .bashrc`

#### Docker Compose

```bash
version: "2.4"

services:

  node:
    image: "pam79/node:v12.14.0"
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
