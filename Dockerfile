FROM node:lts-alpine3.18
WORKDIR /app
COPY . ..
RUN npm install
CMD [ "node", "app.js" ]
USER 10008
