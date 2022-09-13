# wg-meshconf-podman
[wg-meshconf](https://github.com/k4yt3x/wg-meshconf) container

Usage:
- Pull the container:
```
podman pull ghcr.io/0ranki/wg-meshconf:latest
```
- The container expects a directory containing a wg-meshconf database named database.csv to be mounted to /mnt
- Run with
```
podman run -it --rm -v /path/to/db-folder:/mnt --security-opt label:disable ghcr.io/0ranki/wg-meshconf:latest genconfig
```
- `--security-opt label:disable` is not necessarily required, but it keeps the generated config files from getting labeled `container_file_t´, which might cause unexpected issues when taking the generated configs in use
- The argument can be one of `init | addpeer | updatepeer | delpeer | showpeers | genconfig`, or none to start an `ash` shell in the container.
  - Example: `podman run ... ghcr.io/0ranki/wg-meshconf:latest genconfig` results in `wg-meshconf -d database.csv genconfig` being executed in the `/mnt`-directory
- For details about the usage of arguments see the wg-meshconf project page: https://github.com/k4yt3x/wg-meshconf
- For Docker just replace `podman` with `docker`

All credits go to the original author [k4yt3x](https://github.com/k4yt3x)
