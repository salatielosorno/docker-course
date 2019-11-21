FROM node:10

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install

EXPOSE 3000

COPY [".", "/usr/src/"]

CMD ["npx", "nodemon", "index.js"]
