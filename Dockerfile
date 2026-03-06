FROM node:18

RUN apt-get update && apt-get install -y ffmpeg

WORKDIR /app

COPY . .

RUN npm install

RUN chmod +x start.sh


CMD sh -c "./start.sh & node server.js"
