#!/bin/bash

<< task
To Deploy Djano notes app 
task

git_clone() {
   git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_dependency() {
    sudo yum install docker-ce docker-ce-cli containerd.io -y
    sudo dnf install nginx -y   
    sudo chown $USER  /var/run/docker.sock
}

enable_service() {
    sudo systemctl restart docker
    sudo systemctl restart nginx
}

deploy() {
    docker build -t notes-app .
    docker run -d -p 8000:8000 notes-app:latest
}

echo "********** APP Deployment ***************"
if ! git_clone; then
    echo "Change downloaded git repo"
    cd django-notes-app || exit 1
fi 

if ! install_dependency; then
  echo "Docker and nginx deployment fail"
  exit 1
fi

enable_service
deploy
echo "********** Deployment Done **************"