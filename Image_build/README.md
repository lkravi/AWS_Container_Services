# Image build

change directory the image folder you want to build. Read and understand the Dockerfile.

## Building image

```
docker build -t my-nginx .
```

If you are need to build container for different cpu architectures you can define the platform using "--platform amd64"
Read more about multi-platform images https://docs.docker.com/build/building/multi-platform/

--no-cache for ignore cache


### Check list of Images
```
docker images
```

### Run Image
```
docker run -p 80:80 my-nginx
```

### Check Layer Information
```
docker history <image_id> 
```

### Check Image content
```
docker exec -it <container_id> /bin/sh 
```

### Check low-level information 
```
docker inspect <container_id>
```

### Map Volume to container
```
docker run -v /opt/datadir:/var/lib/mysql mysql
```