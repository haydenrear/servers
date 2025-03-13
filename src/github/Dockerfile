FROM node:22.12-alpine

# Must be entire project because `prepare` script is run during `npm install` and requires all files.
COPY src/github /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app

RUN npm install

RUN npm ci --ignore-scripts --omit-dev

ENV NODE_ENV=production

ENTRYPOINT ["node", "dist/index.js"]