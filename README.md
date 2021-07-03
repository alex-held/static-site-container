# Welcome to static-site-base 👋

[![Version](https://img.shields.io/npm/v/static-site-container.svg)](https://www.npmjs.com/package/static-site-container)
[![Documentation](https://img.shields.io/badge/documentation-yes-brightgreen.svg)](https://static-site-container.docs.alexhe)
[![Twitter: 0\_alexheld](https://img.shields.io/twitter/follow/0\_alexheld.svg?style=social)](https://twitter.com/0\_alexheld)

> a basic project structure to have consistent static site deployments with hugo and https/2

### 🏠 [Homepage](https://static-site-container.docs.alexheld.io)

## Quickstart

You need to set the variables in `config/.env`.

```sh
DOCKER_IMAGE=
CERT_DIRECTORY=
```

## Usage

Inside your hugo static site project execute following:

```sh
git submodule add https://github.com/alex-held/static-site-container .static-site-container
git submodule update --init
./.static-site-container/scripts/init_submodule.sh
```

## Author

👤 **Alexander Held**

* Website: <https://www.alexheld.io>
* Twitter: [@0\_alexheld](https://twitter.com/0\_alexheld)
* Github: [@alex-held](https://github.com/alex-held)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
