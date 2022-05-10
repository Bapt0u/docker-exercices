# Commands

## App1

```docker
docker run -p 8000:80 -v "$(pwd)/app1/index.html:/usr/share/nginx/html/index.html" --name app1 --hostname app1 -d nginx:alpine
```

## App2

```docker
docker run -p 8001:80 -v "$(pwd)/app2/index.html:/usr/share/nginx/html/index.html" --name app2 --hostname app2 -d nginx:alpine
```

## LB

```docker
docker run -p 8080:80 -v "$(pwd)/lb/nginx.conf:/etc/nginx/conf.d/default.conf" --name lb --hostname lb -d nginx:alpine
```