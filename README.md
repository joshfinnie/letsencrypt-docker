# letsencrypt-docker
A Docker Container with Let's Encrypt installed to generate SSL Certificates for you!

## To Use

* Run the Docker Container: `docker run -t -i joshfinnie/letsencrypt /bin/bash`
* Once in the Docker Container, run the command to generate your certificate: `./letsencrypt-auto certonly --standalone -d example.com -d www.example.com`
