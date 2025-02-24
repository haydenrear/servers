FROM node:22.12-alpine

COPY src/postgres /app
COPY tsconfig.json /tsconfig.json


WORKDIR /app

RUN npm install

RUN npm ci --ignore-scripts --omit-dev

#COPY /app/dist /app/dist
#COPY /app/package.json /app/package.json
#COPY /app/package-lock.json /app/package-lock.json

ENV NODE_ENV=production

WORKDIR /app

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]