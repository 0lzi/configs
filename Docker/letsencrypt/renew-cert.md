# Reminder on how to renew cert

check 

        docker ps -a

to see if 

        letsencrypt-nginx-container 

is there, if it is then skip to 2a.

1. Stop 'Production Container'
   
        docker stop production-nginx-container

2. Start certbot Container with 

        cd /docker/letsencrypt-docker-nginx/src/letsencrypt
        sudo docker-compose up -d

    2a. 
    
        docker restart letsencrypt-nginx-container 

3.  renew cert 

        sudo docker run -it --rm -v /docker-volumes/etc/letsencrypt:/etc/letsencrypt -v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt -v /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt -v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" tobi312/rpi-certbot certonly --webroot --email foolishhim@gmail.com --agree-tos --no-eff-email --webroot-path=/data/letsencrypt -d home.0lzi.tk -d home.olzi.tk

4. stop 'certbot container'
   
        docker stop letsencrypt-nginx-container

5. restart production container

        
        docker restart production-nginx-container