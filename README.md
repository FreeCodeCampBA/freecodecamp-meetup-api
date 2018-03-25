[![Build Status](https://travis-ci.org/FreeCodeCampBA/freecodecamp-meetup-api.svg?branch=master)](https://travis-ci.org/FreeCodeCampBA/freecodecamp-meetup-api)
# Freecodecamp Meetup API

Hola! Si sos nuevo/a en freeCodeCamp BA te recomendamos pasar por nuestro [Quick Start](https://github.com/FreeCodeCampBA/quick-start).

Este repositorio contiene el API utilizada en nuestra [landing page](http://freecodecampba.org/) para obtener los proximos eventos utilizando el api de [meetup.com](https://meetup.com)

# Requisitos

- Ruby version 2.4.0 (Podes usar [rvm](https://rvm.io/rvm/install) o [rbenv](https://github.com/rbenv/rbenv) para instalarlo)
- Postgresql 9.4+
- Bundler (Si ya tenes ruby, podes instalar bundler haciendo `gem install bundler`)

# Credenciales

Crear un archivo .env en la raiz del proyecto que tenga el API_KEY que nos da meetup.

El contenido deberia ser asi
```
MEETUP_API_KEY=tu-api-key-iria-aca
```

Para obtener esta api key podes <<TODO: Agregar guia>>

# Instalación

- Instalar las gemas del proyecto

```
bundle install
```

- Crear la base de datos

```
bundle exec rails db:create
```

- Crear la base de datos

```
bundle exec rails db:migrate
```

# Tests

Este proyecto tiene tests unitarios y un linter para verificar el correcto funcionamiento y sintaxis del mismo.

Para correr los tests unitarios podes hacer:

```
bundle exec rspec
```

Para correr el linter podes hacer:

```
bundle exec rubocop -Ra
```

Es aconsejable correr ambos de subir codigo a Github, ya que en cada commit se corren estos tests, y solo se deployea el codigo en caso de que ambos tests pasen

# Deployment

El proyecto se deployea automaticamente a [Heroku](https://heroku.com) cada vez que se hace un commit a la branch `master` y este commit pasa el CI.
