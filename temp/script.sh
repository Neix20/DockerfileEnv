# Execute Docker Build
docker build -t txe1/test-env .

# Run Docker
docker run --name test-env -e APP_ENV=sit -d txe1/test-env

# Kill Docker Container
docker rm -f test-env

# Exec into it
docker exec -it test-env /bin/sh

# Check Logs
docker logs test-env

# Copy Image
cp ~/Downloads/Screenshot_2-9-2025_33753_portal.azure.com.jpeg ./apim-screenshot.jpeg
