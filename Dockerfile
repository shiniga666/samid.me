FROM node:10.13.6

#RUN apt-get update && apt-get install -y \
#       vim

WORKDIR /usr/src/app

COPY . ./

RUN npm install

RUN npm run build

CMD ["node", "server.js"]

