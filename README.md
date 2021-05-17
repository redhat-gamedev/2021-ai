# Shipwars Move Server

Used by the "agents" or "bots" to choose their next target.

## Build, Run, and Push

Use the included script to invoke Source-to-Image:

```bash
# Optional environment variables that can be passed to the build
export QUAY_USER=yourusername
export IMAGE_TAG=latest
export IMAGE_REPOSITORY=quay.io/$QUAY_USER/shipwars-move-server

# Builds the image as quay.io/$QUAY_USER/shipwars-move-server:latest
./scripts/build.sh
```

Run the image using the following command. You can visit http://localhost:8080
to verify the service is running.

```bash
docker run --rm -p 8080:8080 quay.io/$QUAY_USER/shipwars-move-server:latest
```

To obtain a sample prediction use this command from the root of the repository:

```bash
curl -X POST -H "Content-Type: application/json" -d @data.json http://localhost:8080/prediction
```

Push to quay.io using this command:

```bash
docker push quay.io/$QUAY_USER/shipwars-move-server:latest
```

