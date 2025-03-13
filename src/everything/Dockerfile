FROM node:22.12-alpine

COPY src/everything /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app

RUN npm install

ENV NODE_ENV=production

RUN npm ci --ignore-scripts --omit-dev

CMD ["node", "dist/index.js"]