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

**Run it locally**

`docker run <image ID>`

**Push to DockerHub**

`docker login`

`docker push 8ctopotamus/docker-express-demo:1.0`

**Locally test the Express server running on the Docker image **

`docker run <image ID>`

`curl --header "Content-Type: application/json" --request POST --data '{"username":"xyz","password":"xyz"}' http://localhost:3001`