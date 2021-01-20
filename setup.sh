#!/bin/sh
docker run --rm --interactive --tty \
  --volume $PWD/images/php:/app \
  composer create-project --prefer-dist laravel/lumen app

sudo chown $USER:$USER images/php/app -R

cp -rf .env.docker.example .env
cp .env.app.example images/php/app/.env