#!/bin/bash

<< comment
Djando Deploy Project
comment

clone_app(){
	echo "Clonging the Djando app..."	
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest	
}

if !clone_app;then
	echo "Intallation Failed!"

fi
	cd django-notes-app
deploy
