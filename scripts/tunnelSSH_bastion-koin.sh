#!/bin/bash


pid=$(ps -ef | grep ssh | grep bastion | grep -ow [[:digit:]]* | head -n 1)
if [ -n "$pid" ]; then
	kill -9 $pid
fi

ssh -f -N -L:1337:dralagen.fr:22 e104291k@bastion.etu.univ-nantes.fr
