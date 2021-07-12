### Task №1
mkdir ~/hello-nginx

nano ~/hello-nginx/index.html

docker run -d -p 8000:80 --name Nginx -v ~/hello-nginx:/usr/share/nginx/html nginx:latest

curl -X GET http://localhost:8000

### Task №2
mkdir ~/myapp

cd ~/myapp

nano ~/myapp/app.js

nano ~/myapp/Dockerfile

nano ~/myapp/.dockerignore

docker build -t myapp:v.01 ~/myapp

docker run -p 3000:3000 myapp:v.01

curl -X GET http://localhost:3000

### Task №3
cd ~/myapp

nano ~/myapp/docker-compose.yaml

docker-compose up

curl -X GET http://localhost:8000

### Task №4
cd ~/myapp

docker-compose up --scale myapp=4

curl -X GET http://localhost:8000

### Task №5
nano ~/myapp/myapp-deployment-service.yaml

nano ~/myapp/myapp-ingress.yaml

minikube start

minikube addons enable ingress

kubectl apply -f myapp-deployment-service.yaml

kubectl apply -f myapp-ingress.yaml

#### Get IP for request (no permanent domain assigned) (for IPv4)

kubectl get ingress myapp-ingress | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b' | xargs -I{} curl -X GET {}
