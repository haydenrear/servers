FROM node:22.12-alpine

# Must be entire project because `prepare` script is run during `npm install` and requires all files.
COPY src/brave-search /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app

RUN npm install

ENV NODE_ENV=production

RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]