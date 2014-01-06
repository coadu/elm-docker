# Compile Elm master

FROM mfu/elm-src-ghc-7.6

MAINTAINER Mads Flensted-Urech, Coadu.com

ADD docker-build.sh /usr/src/Elm/docker-build.sh
RUN /bin/bash -c "cd /usr/src/Elm && ./docker-build.sh"
