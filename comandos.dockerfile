FROM node:latest
MAINTAINER Christian
COPY volume-exemplo /var/www
WORKDIR /var/www
RUN npm install 
ENTRYPOINT npm start
EXPOSE 3000

# para compilar o dockerfile
# docker build -f comandos.dockerfile  -t chriscoliveira/node_teste .
# para ver a imagem criada
# docker images
# para rodar a imagem
# docker run -d -p 8080:3000 -name node_teste chriscoliveira/node_teste