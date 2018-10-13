FROM node:10.4

ENV APP_ROOT /src

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}


RUN npm install
# for node sass
RUN npm rebuild node-sass
RUN npm run build

ENV HOST 0.0.0.0
