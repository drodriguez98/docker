# Construír una imagen a partir de un Dockerfile -> docker build -t docker-test:1.0 
# Mostrar todas las imagenes -> docker images
# Eliminar una imagen -> docker rmi docker-test:1.0

# Crear y ejecutar un contenedor a partir de una imagen -> docker run -d --name docker-test -p 3000:3000 docker-test:1.0
# Iniciar, detener o reiniciar un contenedor -> docker start / stop docker-test
# Mostrar contenedores en ejecución -> docker ps
# Mostrar todos los contenedores -> docker ps -a
# Mostrar logs de un contenedor en específico -> docker logs docker-test
# Eliminar un contenedor -> docker rm docker-test
# Eliminar todos los contenedores -> docker rm -f

# Crear un volumen -> docker volume create nombre_del_volumen
# Listar todos los volúmenes -> docker volume ls

# Crear una red -> docker network create network1
# Listar todas las redes -> docker network ls

# Ejecutar un comando en un contenedor -> docker exec -it docker-test whoami

FROM node:16.19.0

WORKDIR /app

COPY package.json .
COPY index.js .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]