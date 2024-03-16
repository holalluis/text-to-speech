#!/bin/bash

#git
git add *
git commit -m update
git push

#desplega al servidor
# -h  human readable format
# -P  mostra progrés
# -vv incrementa verbositat
# -r  actua recursivament
rsync --rsync-path="sudo rsync" -h -P -vv -r . \
  --exclude ".git" \
  --exclude "deploy.sh" \
  debian@51.91.250.220:/var/www/html/text-to-speech
