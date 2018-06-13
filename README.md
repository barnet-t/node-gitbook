# node-gitbook
Automated Build to Docker Hub

Example of `docker-compose.yml`

```yaml
version: '3'
services:
  gitbook:
    build: barnet/gitbook:0.1
    container_name: gitbook
    tty: true
    volumes:
      - ./gitbook/:/gitbook/
    ports:
      - "4000:4000"
      - "35729:35729"
```