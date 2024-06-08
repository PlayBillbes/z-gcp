FROM kalilinux/kali-rolling

#ENV TTY_VER 1.6.1
#ENV USER kali
#ENV PASSWORD kali
WORKDIR /app
COPY . ..

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 -o ttyd_linux && \
    chmod +x ttyd_linux && \
    cp ttyd_linux /usr/local/bin/

RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	sudo \
	wget \
  unzip \
	screen \
  npm install \
	-y --show-progress 

CMD ["npm", "start"]

#FROM node:lts-alpine3.18
#WORKDIR /app
#COPY . ..
#USER 10014
#RUN npm install
#CMD ["npm", "start"]
