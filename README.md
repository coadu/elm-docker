
# elm-docker

## Prerequisites

1. Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
1. Install [Virtualbox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
1. Install [Vagrant](http://www.vagrantup.com/downloads.html)
1. Install Vagrant Virtualbox Guest Extension Plugin:
```shell
vagrant plugin install vagrant-vbguest
```

## Setup containers

```shell
git clone https://github.com/madscoaducom/elm-docker.git
cd elm-docker
vagrant up
# Get coffee (at the Café downtown)
```

## Access elm compiler
```shell
vagrant ssh
docker run -i -t $(docker images -q | head -n 1) /bin/bash
elm --help
```

Copyright (c) 2013 Mads Flensted-Urech

elm-docker is licensed under an MIT +no-false-attribs license. All rights not explicitly granted in the MIT license are reserved. See the included LICENSE file for more details.
