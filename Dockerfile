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
    chmod +x app.js app_edtunnel.js &&\
    npm install


CMD [ "node", "app.js" ]

USER 10008
