#!/bin/sh
docker run --rm --interactive --tty \
  --volume $PWD/images/php:/app \
  composer create-project --prefer-dist laravel/lumen app