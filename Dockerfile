FROM ubuntu:20.10

WORKDIR /usr/appDk

COPY package*.json ./

RUN apt-get update \
  && apt-get install -y nodejs \
  && apt-get update \
  && apt install -y npm
  

RUN npm install
RUN npm install nodemon
RUN nodejs -v
RUN npm -v
COPY . .

EXPOSE 3000

CMD ["npm", "start"]