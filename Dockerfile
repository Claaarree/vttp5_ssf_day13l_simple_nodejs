FROM node:22

WORKDIR /node_src

COPY package*.json index.js ./

RUN npm install

ARG port=3000
EXPOSE ${PORT}

CMD node index.js
