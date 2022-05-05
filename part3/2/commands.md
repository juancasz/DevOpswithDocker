 docker build -t builder-exercise-32 .  
 docker run -v /var/run/docker.sock:/var/run/docker.sock -e DOCKER_USERNAME= -e DOCKER_PASSWORD= builder-exercise-32