#!/bin/bash

images=$(docker ps -a | grep "tenable" | cut -d " " -f 1);for i in $images;do docker rm -f $i;done
