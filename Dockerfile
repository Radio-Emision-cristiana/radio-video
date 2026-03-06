FROM node:18

RUN apt-get update && apt-get install -y ffmpeg dos2unix

WORKDIR /app

COPY . /app

RUN dos2unix /app/start.sh

RUN chmod +x /app/start.sh

RUN npm install

CMD sh -c "/app/start.sh & node server.js"

