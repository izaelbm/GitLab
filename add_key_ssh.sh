#!/bin/bash

#gerando a chave
ssh-keygen -t rsa -b 4096 -C "seu_email@example.com"
#adicionando a chave 
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

#lendo a chave pub
cat ~/.ssh/id_rsa.pub

#clonando projeto
git clone git@github.com:user/repository.git
