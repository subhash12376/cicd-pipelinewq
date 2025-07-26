FROM node:18-alpine

WORKDIR /app

Copy Package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
CMD ["node", "dist/,main"]
