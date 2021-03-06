FROM node:9.3.0

RUN apt update && apt full-upgrade -yy

RUN npm install -g nodemon

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app

RUN make rebuild-dashboard

CMD [ "npm", "start" ]

EXPOSE 8080
