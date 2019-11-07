# Installing NodeJS on ubuntu
FROM ubuntu:18.04

# set maintainer
LABEL maintainer "ramyaranjan1992"

# install node packages
RUN apt-get update && apt-get -y install nodejs && apt-get -y install npm && apt-get -y install node-express

WORKDIR /app
COPY . /app

EXPOSE 9005
ENTRYPOINT ["node"]
CMD ["server.js"]


