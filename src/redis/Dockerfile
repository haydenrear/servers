FROM node:22.12-alpine

COPY src/redis /app

WORKDIR /app
RUN npm install

RUN npm run build

ENV NODE_ENV=production

WORKDIR /app

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "build/index.js"]