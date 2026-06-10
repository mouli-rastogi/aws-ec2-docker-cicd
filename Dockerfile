FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN apt-get update && apt-get install -y curl

EXPOSE 3000

HEALTHCHECK CMD curl --fail http://localhost:300/health ||exit 1

CMD ["node", "app.js"]