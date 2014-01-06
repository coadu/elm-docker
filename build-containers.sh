UBUNTU_VERSION=13.10
GHC=ghc-7.6
MAINTAINER="Mads Flensted-Urech, Coadu.com"
MAINT=mfu

cat > Dockerfile << EOF1
FROM stackbrew/ubuntu:$UBUNTU_VERSION

MAINTAINER $MAINTAINER

RUN  echo 'deb http://archive.ubuntu.com/ubuntu saucy main universe' > /etc/apt/sources.list
RUN  apt-get update
RUN  apt-get install -y haskell-platform git wget
RUN  cabal update
EOF1

IMAGE=$MAINT/elm-$GHC
docker build -t $IMAGE .

cat > Dockerfile << EOF2
FROM $IMAGE

MAINTAINER $MAINTAINER

RUN  git clone https://github.com/evancz/Elm /usr/src/Elm/
EOF2

IMAGE=$MAINT/elm-src-$GHC
docker build -t $IMAGE .

cat > Dockerfile << EOF3
FROM $IMAGE

MAINTAINER $MAINTAINER

ADD build-elm.sh /usr/src/Elm/build-elm.sh
RUN /bin/bash -c "cd /usr/src/Elm && ./build-elm.sh"
EOF3

BRANCH=master
IMAGE=$MAINT/elm-$BRANCH-$GHC
docker build -t $IMAGE .

