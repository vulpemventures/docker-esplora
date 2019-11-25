# Docker esplora

Dockerfile of the public images [vulpemventures/esplora](https://hub.docker.com/r/vulpemventures/esplora) and [vulpemventures/esplora-liquid](https://hub.docker.com/r/vulpemventures/esplora-liquid)

Pull the image:

```bash
$ docker pull vulpemventures/esplora:latest
```

Run the container:

```bash
$ docker run -p 5000:5000 -d -e API_URL=https://blockstream.info/api -e PORT 5000 vulpemventures/esplora:latest
```