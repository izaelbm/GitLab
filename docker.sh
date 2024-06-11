#remover images com status exited
docker rm $(docker ps -a -f status=exited -q)

#tag none
docker images --filter "dangling=true" -q --no-trunc | xargs -r docker rmi
