# Preparing bower files (only have bower in dev dependencies....)
FROM node


RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
COPY app.js /app/server.js

RUN npm install
# --only=production


EXPOSE 8081

CMD [ "npm", "start" ]
