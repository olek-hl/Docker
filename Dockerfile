FROM node:8 as react-build
WORKDIR /usr/src/bsa-docker
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
