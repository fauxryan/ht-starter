FROM node:12-slim@sha256:f23d5785b19e65224f2cd35f3cc6207d4de147d12d75b52d0dc8af2d507c7f51

WORKDIR /starter
ENV NODE_ENV development

COPY package.json /starter/package.json

RUN npm install --production

COPY .env.example /starter/.env.example
COPY . /starter

CMD ["npm","start"]

EXPOSE 8080
