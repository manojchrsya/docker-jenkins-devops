FROM node:16.2.0

RUN yarn global add nodemon

COPY . /app/
WORKDIR /app

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1
RUN git init

RUN npm install

RUN npm run nodemon;
