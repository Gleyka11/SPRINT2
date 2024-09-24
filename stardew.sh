# Para parar e remover os contêineres, redes e volumes definidos no docker-compose.yml
docker-compose down 

# Para construir as imagens novamente, iniciar os contêineres e remover contêineres órfãos (não definidos no docker-compose.yml)
docker-compose up --build --remove-orphans
