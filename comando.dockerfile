#baixar imagens
docker pull ubuntu:16.04

#exibir containers em execucao
docker ps

#exibir containers criados
docker ps -a

#executar container
docker run ubuntu:16.04

#entrar no container (-it)
docker run -it <id_container> 

#startart container
docker start <id_container>

#startart o container e entrar nele
docker start -a -i <id_container>

#parar container
docker stop <id_container>

#parar todos os containers
docker stop -t 0 $(docker ps -a -q)

#remover container
docker rm <id_container>

#remove container inativo
docker container prune

#remover imagem
docker rmi <id_imagem>

#executar container em segundo plano
docker run -d <id_container>

#abrir um container com porta aleatoria
docker run -d -P <id_container>

#definir uma porta para o container
docker run -d -p <porta>:<porta> <id_container>

#mostrar portas de um container
docker port <id_container>

#colocar nome no container
docker rename <id_container> <nome_container>
docker run -d -P --name <nome_container> <id_container>

#denifir variáveis de ambiente
docker run -d -P -e <nome_variavel>=<valor_variavel> <id_container>
docker run -d -P -e AUTHOR='Christian' <id_container>

#inspecionar container
docker inspect <id_container>

#usando um volume
docker run -d -P -v <caminho_volume>:<caminho_volume> <id_container>
docker run -it -P -v '/tmp/volume:/tmp/volume' ubuntu

#executar um container com um volume e iniciar com um comando dentro de uma pasta especifica
docker run -d -p 8080:3000 -v '/home/adming/volume-exemplo:/var/www' -w '/var/www' node npm start
#ou
docker run -d -p 8080:3000 -v '$(pwd):/var/www' -w '/var/www' node npm start

#exibir ip dentro do container
docker hostname -i

#criar rede para os containers
docker network create --driver bridge <nome_rede>

#listar redes
docker network ls

#inspecionar containers na rede
docker network inspect <nome_rede>
 

criar um container usando uma rede
docker run -it --network <nome_rede> --name <nome_container> <id_container>
 
