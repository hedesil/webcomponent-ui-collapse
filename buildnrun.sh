#!/bin/sh
echo Docker build...
#sudo docker build --rm --no-cache -t `grep name elements/package.json |cut -d"\"" -f4` .
sudo docker build -t `grep name elements/package.json |cut -d"\"" -f4` .
echo Build success

echo Docker run...
#sudo docker run -p 9090:443 -it `grep name elements/package.json |cut -d"\"" -f4` /bin/bash
sudo docker run -p 9090:443 --network="host" `grep name elements/package.json |cut -d"\"" -f4` 
echo Done!
