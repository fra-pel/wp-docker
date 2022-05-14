#!/bin/bash
nome=`sed -n -e '/COMPOSE_PROJECT_NAME/ s/.*\= *//p' .env`
sed -i 's/db_/'db_"$nome"'/' docker-compose.yml
sed -i 's/wp__/'wp_"$nome"'/' docker-compose.yml
echo "OK TERMINATO"
echo "############[ AVVIO ]##############"
docker-compose up -d --build
