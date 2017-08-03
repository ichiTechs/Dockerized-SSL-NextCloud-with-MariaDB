# Dockerized-SSL-NextCloud-with-MariaDB
A NextCloud server with a MariaDB database behind a Nginx reverse proxy with LetsEncrypt for SSL encryption

I have made a video on how to set this up and get this running check it out below:

   - https://youtu.be/uR5Tn_blKwI

I was able to put this all together from the help of a few githubs below:
   - https://github.com/nextcloud/docker
   - https://github.com/jwilder/nginx-proxy
   - https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

Clone this repository to a directory you want on your server.

Next edit the docker-compose.yml file to your liking 

    - environment variables (DOMAIN & DOMAIN@EMAIL)
    - change root password of Maria-DB
    - change persistant data volumes for the containers
  
Before you start up the containers for this to work you need to create a seperate network.

    -$ docker network create nginx-proxy
  
Don't just spin up everything spin up the database first.

    -$ docker-compose up -d db
  
After you let that start up spin up the rest.

    -$ docker-compose up -d
  
Once you have done this let LetsEncrypt get the certs and everything set up, it may take awhile so be patient.

Now access your DOMAIN and do the initial setup of NextCloud and your all set.

To update all of your containers with the latest updates use the commands below:

    -$ docker-compose down (stops and removes these containers)
    -$ docker-compose pull (pulls the new updated images)
    -$ docker-compose up -d (starts your containers with the new updated images)
  
    - if your nextcloud apps break after an update just re-enable them
