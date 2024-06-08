FROM node:lts-alpine3.18
USER 10014
WORKDIR /app
COPY . ..
RUN npm install
CMD ["npm", "start"]
