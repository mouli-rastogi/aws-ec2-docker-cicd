FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

HEALTHCHECK CMD curl --fail http://localhost:300/health ||exit 1

CMD ["node", "app.js"]