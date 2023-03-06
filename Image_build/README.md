# Image build

change directory the image folder you want to build. Read and understand the Dockerfile.

## Building image

```
docker build -t my-nginx .
```

If you are need to build container for different cpu architectures you can define the platform using "--platform amd64"
Read more about multi-platform images https://docs.docker.com/build/building/multi-platform/
