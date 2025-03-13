FROM node:22.12-alpine

COPY src/everart /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app

RUN npm install

ENV NODE_ENV=production


RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]

CMD ["node", "dist/index.js"]