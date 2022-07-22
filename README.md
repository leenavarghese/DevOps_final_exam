## INTRODUCTION
This project includes creating three web pages - [page1.html](page1.html), [page2.html](page2.html) and [page3.html](page3.html) with each page has two links to other pages. Then we created a Docker container and package the application (those pages) in an image. Then, we created a Kubernetes Deployment with 3 replicas by using the image we created and created a NodePort service in front of those pods and connected to the webserver through the public IP address of the server. Additionally, through Jenkins create a CI pipeline in a way that when you push the pages to the remote repo (Github repo), the Jenkins creates an image.

## TECHNOLOGY STACK
* HTML
* Docker
* Kubernetes
* Jenkins

## COMMANDS USED
```
docker build -t q1:1.0 .
```
![image build](./)
```
docker images
```
```
docker run  -id -p 80:80 --name q1_demo q1:1.0
```
```
docker container ls |grep q1_demo
```
```
kubectl apply -f deployment.yml
```
```
kubectl apply -f service.yml
```

