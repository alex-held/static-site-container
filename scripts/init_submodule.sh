#!/usr/bin/env bash
set -e

# Requires Argument:
# $1 submodule directory
if [[ ! -e $1 ]]; then
    echo "you must provide path of the submodule as an argument to this script"
    exit 1
fi

echo "please enter the docker image name you want to build:"
read docker_image

echo "please enter the directory where you store your ssl certificates (cer|crt) + key"
read cert_dir

# linking
#test -f scripts && rm -rdf scripts
ln -s "$1/scripts" scripts

#test -f nginx && rm -rdf nginx
ln -s "$1/nginx" nginx

#test -f .env && rm .env
ln -s "$1/config/.env" .env

#test -f docker-compose.yml && rm docker-compose.yml
ln -s "$1/docker-compose.yml" docker-compose.yml

#test -f docker-compose.prod.yml && rm docker-compose.prod.yml
ln -s "$1/docker-compose.prod.yml" docker-compose.prod.yml

#test -f site.Dockerfile && rm site.Dockerfile
ln -s "$1/site.Dockerfile" site.Dockerfile

echo "DOCKER_IMAGE=$docker_image" >>.env
echo "CERT_DIRECTORY=$cert_dir" >>.env
