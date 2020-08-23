FROM node.js:latest
RUN mkdir -p /user/node
WORKDIR /user/node
ADD . /user/node
RUN npm install
EXPOSE 3000
LABEL maintainer="Teddy"
CMD [ "npm","start" ]