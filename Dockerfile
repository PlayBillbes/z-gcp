FROM node:lts-alpine3.18
WORKDIR /app
COPY . ..
USER 10014
RUN npm install
CMD ["npm", "start"]
