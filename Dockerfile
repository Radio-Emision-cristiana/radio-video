FROM node:18

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y ffmpeg

RUN npm install

RUN chmod +x start.sh

EXPOSE 10000

CMD sh -c "./start.sh & node server.js"
