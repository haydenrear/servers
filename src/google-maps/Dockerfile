FROM node:22.12-alpine AS builder

# Must be entire project because `prepare` script is run during `npm install` and requires all files.
COPY src/google-maps /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app

RUN npm install

RUN npm ci --ignore-scripts --omit-dev

ENV NODE_ENV=production

WORKDIR /app

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]