# Docker Demo

Creating a Docker image for a simple Node/Express server.

[Fireship Youtube Video - Learn Docker in 7 Easy Steps - Full Beginner's Tutorial](https://www.youtube.com/watch?v=gAkwW2tuIqE)

[Docker Docs](https://docs.docker.com/reference/)

## Docker Notes:

**Lists all running containers**

`docker ps`

**Build the image**: 

`docker build -t 8ctopotamus/docker-express-demo:1.0 .` 

The `-t` (tag) flag names the container. Give it a namespaced tag.

**Show built images**

`docker images`

**Run it locally**

`docker run <image ID>` 

⚠ Important! Our image runs and our server starts listening, but if you try to make a request to the server, it fails (local:container).

We need to forward a port to our Docker container from our local machine:

`docker run -p 3001:3001 <image ID>`

To open a shell in the running image

`docker exec`

**Push to DockerHub**

`docker login`

`docker push 8ctopotamus/docker-express-demo:1.0`

---

**Locally test the Express server running on the Docker image **

`docker run -p 3001:3001 <image ID>`

`curl --header "Content-Type: application/json" --request POST --data '{"username":"xyz","password":"xyz"}' http://localhost:3001`

## Volumes: share data/files across containers

Create the volume

`docker volume create shared-stuff`

Run the container with the volume

```
docker run \
--mount source=shared-stuff,target=stuff
```

## Running multiple containers with Docker Compose

`docker compose up`