#!/bin/sh

sudo docker build --rm --no-cache -t `grep name elements/package.json |cut -d"\"" -f4` .

sudo docker run -p 9090:80 `grep name elements/package.json |cut -d"\"" -f4` &
