#!/bin/bash

users=($(ls ./Linux/Kernel/))
contador=0
while :
do
	contador++
	scp -r ubuntu@192.168.70.111:/home/ubuntu/israel/TCCProject/Search/Linux/TermsCounter ./
	git add --all
	git commit -m ${contador}
	git push
	rm -fr ./TermsCounter
	sleep 10
done
