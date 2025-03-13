FROM node:22.12-alpine

COPY src/sequentialthinking /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app
RUN npm install

ENV NODE_ENV=production

WORKDIR /app

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]
