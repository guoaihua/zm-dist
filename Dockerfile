FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --registry=https://registry.npm.taobao.org
COPY . .
EXPOSE 8080
CMD npx serve dist -p 8080


 