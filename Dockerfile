ARG NODE_VERSION=12.2.0-alpine
FROM node:$NODE_VERSION
WORKDIR /app
ENV PATH /app/node_modules/.bin:${PATH}
COPY . .
RUN npm install
CMD ["node", "main.js"]
