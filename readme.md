[Fireship Youtube Video - Learn Docker in 7 Easy Steps - Full Beginner's Tutorial](https://www.youtube.com/watch?v=gAkwW2tuIqE)

## Docker Notes:

* `docker ps` - lists all running containers

Build the image: 

`docker build -t 8ctopotamus/docker-express-demo:1.0 .` 

The `-t` (tag) flag names the container. Give it a namespaced tag.

Run it locally

`docker run <image ID>`

### Test the basic Express server

`npm start`

`curl --header "Content-Type: application/json"   --request POST   --data '{"username":"xyz","password":"xyz"}'   
http://localhost:3001`