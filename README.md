1. Created Python / flask application named script as **hello.py**
2. Written unit test cases for application and named script as **hello.test.py **
3. Dockerized application using **DockerFile** and push to the docker hub
4. Created  ec2 instance using terraform script **terraform/main.tf**
5. Configured deployment on EC2 instance --> installed prerequisites like docker, nginx etc..
6. Installed Nginx proxy and if the app does not respond to a request in 30 sec the web server times out.you can refer **nginx.conf** and restarted nginx server
7. I have Setup jenkins job to build a new docker image and when i push new changes to the branch and will deploy the updated code on EC2
8. Created Jenkins freestyle job and installed ssh remote host plugin to connect to ec2 instance :
9. and ran few docker commands to build and deploy docker into ec2 instance 

