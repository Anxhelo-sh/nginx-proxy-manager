If you need to change the configuration, simply edit the .conf file and issue a command to the NginX container to reload the configuration.

docker exec -it <nginx container name> nginx -s reload
If you need to add new domains, simply edit the docker-compose file and stop and start the nginx container again, new certificates will be issued.