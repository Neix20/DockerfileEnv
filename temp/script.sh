# Execute Docker Build
docker build -t txe1/test-env --build-arg ENVIRONMENT=sit .

# Run Docker
docker run --name test-env -d txe1/test-env

# Kill Docker Container
docker rm -f test-env

# Exec into it
docker exec -it test-env /bin/sh
