FROM node:0.12.7

# make a directory in the image  for the node app
RUN mkdir -p /usr/src/app
# make that directory the working directory for the app
WORKDIR /usr/src/app

# copy local files on host to the app directory in the image
COPY . /usr/src/app
# install dependencies for the nodeJS app
RUN npm install

# expose the port 3000 of the container created when running this image
EXPOSE 3000

# default command executed when run a container based on this image, to start the app
CMD ["npm", "start"]

