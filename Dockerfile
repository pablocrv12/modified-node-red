# Usa una imagen base de Node.js
FROM node:latest

# Instala git
RUN apt-get update && apt-get install -y git && apt-get clean

RUN git clone https://github.com/pablocrv12/modified-node-red

WORKDIR /node-red

RUN npm install

RUN npm run build

EXPOSE 1880

CMD ["npm", "start"]
