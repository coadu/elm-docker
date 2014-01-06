# GHC 7.6.3 base image for compiling Elm
# Using Haskell Platform 2013.2.0.0

FROM stackbrew/ubuntu:13.10

MAINTAINER Mads Flensted-Urech, Coadu.com

RUN  echo 'deb http://archive.ubuntu.com/ubuntu saucy main universe' > /etc/apt/sources.list
RUN  apt-get update
RUN  apt-get install -y haskell-platform git wget
RUN  cabal update
