#FROM node:lts-alpine3.18
#WORKDIR /app
#COPY . ..
#RUN npm install
#CMD ["npm", "start"]


FROM node:latest

WORKDIR /home/choreouser

EXPOSE 3000

COPY files/* /home/choreouser/

RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    addgroup --gid 10008 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    chmod +x index.js swith web server &&\
    npm install
RUN curl https://my.webhookrelay.com/webhookrelay/downloads/install-cli.sh | bash

CMD ["npm", "start"]

USER 10008
