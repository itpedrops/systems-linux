#!/bin/bash

echo "Instaling Docker be pacient! :)"

apt-get update && apt-get install curl;

curl -fsSL https://get.docker.com | sh;

echo "####################################"
echo "## Docker installation successful ##"
echo "####################################"


exit;
