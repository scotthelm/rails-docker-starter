# Rails Starter

This repo is a new rails installation in a docker container.

The application consists of
* Rails 5.1
* Rspec
* Guard
* Postgres database
* Support for background job processors through a Redis image

## Prerequisites

You must have a working docker environment with docker-compose support. If you
need help getting that set up, [go here](https://docs.docker.com/get-started/)

## Setup

After cloning the repo...

```
docker-compose build
docker-compose run --rm web bin/setup
```

Once you're all set up, nuke this git history and start fresh:

```
rm -rf .git
git init
```

This allows you to add your own remote and go from there. I hope this makes
getting started with Rails in docker a little easier.

## Usage

run the app

```
docker-compose up web
```

console

```
  docker-compose run --rm web rails c
```

generate a new model

```
docker-compose run --rm web rails g model model_name attributes:text
```

migrate

```
docker-compose run --rm web rake db:migrate
```

run guard

```
docker-compose run --rm web guard
```

run specs

```
docker-compose run --rm web rspec
```

## Nib

[Nib](https://github.com/technekes/nib) is a fantastic tool for ruby/rails
development in a docker-compose environment

the above commands would be:

```
nib up web
nib console web
nib run web rails g model model_name attributes:text
nib rake web db:migrate
nib run web guard
nib run web rspec
```

Additional benefits include
* shell history inside a container (!!)
* irb/pry history inside a console (!!)
