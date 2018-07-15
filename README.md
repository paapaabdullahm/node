## **NodeJS**
Dokerized Node with Browsersync & Yarn Package Manager

#### Current Tags:

  - Node (LTS): **`8.11.*`**
  - Browsersync: **`2.24.5`**
  - Yarn: **`1.6.0`**

#### Zshrc Shortcuts

```zsh
node() { docker run --rm -it -v "$(pwd)":/src pam79/node node "$@" }
```

```zsh
npm()  { docker run --rm -it -v "$(pwd)":/src pam79/node npm  "$@" }
```

```zsh
yarn() { docker run --rm -it -v "$(pwd)":/src pam79/node yarn "$@" }
```

```zsh
browserSync() { docker run --rm -it --net proxy-tier -v "$(pwd)":/src pam79/node browser-sync "$@" }
```

#### Docker Compose
// TODO:
