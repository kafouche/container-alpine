# Alpine Linux

## Image
### Environment
| Parameter | Description                                          |
|-----------|------------------------------------------------------|
| `TZ`      | Set container's timezone (*default*: `Europe/Paris`) |

## Build
```
docker build -t kafouche/alpine:latest .
```


## Run
The following `code blocks` are only there as **examples**.
### Manual
```
docker run --detach \
    --name alpine \
    --network bridge \
    kafouche/alpine:latest
```

### Composer
```
---
version: "3"

services:
    alpine:
        container_name: "alpine"
        image: "kafouche/alpine:latest"
        network_mode: bridge
```
