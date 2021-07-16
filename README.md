# Docker esplora

Dockerfile of the public image [ghcr.io/vulpemventures/esplora:latest](https://github.com/orgs/vulpemventures/packages/container/package/esplora)

Pull the image:

```bash
$ docker pull ghcr.io/vulpemventures/esplora:latest
```

Run the container:

```bash
$ docker run -p 5000:5000 -d -e API_URL=https://blockstream.info/api -e PORT 5000 ghcr.io/vulpemventures/esplora:latest
```

## Release

To tag a new image with a new version:

1) Create a new folder with `COMMIT_SHA` as directory name
2) Modify the GH Action in `.github/workflows/docker-publish.yml` changing the ARG `COMMIT_SHA` with new created folder
3) Push in master
