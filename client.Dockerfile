FROM node:17.5-buster

RUN mkdir app
WORKDIR /app
COPY ./frontend .

RUN npm install

USER node

CMD ["npm", "run", "dev"]