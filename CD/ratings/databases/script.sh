#!/bin/sh

echo "printenv"

printenv

echo "MONGODB_USERNAME" $MONGODB_USERNAME
echo "MONGODB_PASSWORD" $MONGODB_PASSWORD
echo "MONGODB_DATABASE" $MONGODB_DATABASE

set -e
mongoimport --host localhost --username $MONGODB_USERNAME --password $MONGODB_PASSWORD \
  --db $MONGODB_DATABASE --collection ratings --drop --file /docker-entrypoint-initdb.d/ratings_data.json