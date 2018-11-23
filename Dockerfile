# Preparing bower files (only have bower in dev dependencies)
FROM node


RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY --from=0 /app/src/public/static/bower_components/ /app/src/public/static/bower_components/

COPY package.json /app/
COPY app.js /app/server.js

RUN npm install
# --only=production


EXPOSE 3000

CMD [ "npm", "start" ]
