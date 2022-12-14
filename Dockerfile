FROM node:bullseye-slim

WORKDIR /app

COPY nodeapp/package.json .

RUN npm install

COPY . .

EXPOSE 80

WORKDIR /app/nodeapp

CMD ["npm", "start"]