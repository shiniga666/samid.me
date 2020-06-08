FROM node:10.16.3

#RUN apt-get update && apt-get install -y \
#       vim

WORKDIR /usr/src/app

COPY . ./

RUN npm install

RUN npm run build

CMD ["npm", "run" , "start"]

