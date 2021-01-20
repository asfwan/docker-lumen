#!/bin/sh
docker run --rm --interactive --tty \
  --volume $PWD/images/php:/app \
  composer install