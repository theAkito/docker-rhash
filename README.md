![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/akito13/rhash?style=plastic)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/akito13/rhash?style=plastic)

![Docker Stars](https://img.shields.io/docker/stars/akito13/rhash?style=plastic)
![Docker Pulls](https://img.shields.io/docker/pulls/akito13/rhash?style=plastic)

![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akito13/rhash?style=plastic)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/akito13/rhash?style=plastic)

![GitHub](https://img.shields.io/badge/license-GPL--3.0-informational?style=plastic)
![Liberapay patrons](https://img.shields.io/liberapay/patrons/Akito?style=plastic)

## What
Rhash in a Docker image with [enabled openssl based enhancements](https://github.com/rhash/RHash/blob/master/INSTALL.md#enabling-features).

Rhash is a CLI utility for computing a wide variety of hashes and checksums. See more [here](http://rhash.sourceforge.net/).

## Why
* Use the brand newest version of rhash without any library version trouble.
* You don't need to trouble yourself with compilation yourself, the Dockerfile will take care of it.
* Due to the alpine base image, this image is super small.
* If you follow below recommendation of how to use this image, then you will automatically always use the newest version of rhash.

## How
Recommended way of usage:
```bash
alias rhash='docker run --rm -it -v "$(pwd):$(pwd)" -w "$(pwd)" akito13/rhash rhash '
```
Now run the `rhash` command as you would always do:
```bash
rhash --uppercase --sha512 Dockerfile
```

## Get
Latest build:
```bash
docker pull akito13/rhash
```
Fixed version:
```bash
docker pull akito13/rhash:0.1.0
```
Tags follow semver, without the `v`.
Git tags equal Docker tags, so no need to check tags explicitly on Docker Hub.

## Build
Build yourself:
```bash
docker build -t akito-rhash:test -f Dockerfile .
```

## License
Copyright (C) 2020  Akito <the@akito.ooo>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.