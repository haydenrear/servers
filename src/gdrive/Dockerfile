FROM node:22.12-alpine

COPY src/gdrive /app
COPY tsconfig.json /tsconfig.json

WORKDIR /app
RUN npm install

ENV NODE_ENV=production

RUN npm ci --ignore-scripts --omit-dev

COPY src/gdrive/replace_open.sh /replace_open.sh

RUN sh /replace_open.sh

RUN rm /replace_open.sh

ENTRYPOINT ["node", "dist/index.js"]