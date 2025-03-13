FROM node:22.12-alpine

WORKDIR /app

COPY src/filesystem /app
COPY tsconfig.json /tsconfig.json

RUN npm install

ENV NODE_ENV=production

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "/app/dist/index.js"]