FROM node:8
EXPOSE 2334
VOLUME /tmp
COPY package*.json ./
COPY . .
ADD server.js server.js
ADD .env .env
ADD db.js db.js
ADD app.js app.js
RUN npm install
CMD npm start

