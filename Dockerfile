# Note - each step is a "layer", these are cached by default

# base image
FROM node:16

# point to source code
WORKDIR /app

# install our dependancies so they are cached. Copy from our source code into our container
COPY package*.json ./

# NOTE: referred to as "shell form"
RUN npm install

# Copy local files to WORKDIR
COPY . . 

ENV PORT=3001

EXPOSE 8080

# kick it off - note: this array of strings is known as "exec form", preferred as it does not start up a shell session
CMD [ "npm", "start" ]
