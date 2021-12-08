# specify a base image
FROM node:alpine

WORKDIR /app

# install dependecies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# default command
CMD ["npm", "start"]