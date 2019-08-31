ARG NODE_VERSION=12.2.0-alpine
FROM node:$NODE_VERSION
WORKDIR /app
# ENV PATH /app/node_modules/.bin:$PATH

# COPY package.json /app/package.json
# COPY index.html /app/index.html
# COPY main.js /app/main.js
COPY ./package.json /app/package.json
COPY ./node_modules /app/node_modules
COPY ./build /app/build

RUN npm i -g yarn
# RUN npm install
CMD ["yarn", "build:serve"]
