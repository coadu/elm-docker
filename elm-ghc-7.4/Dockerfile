# GHC 7.4.2 base image for compiling Elm
# Using Haskell Platform 2012.2.0

FROM stackbrew/ubuntu:12.10

MAINTAINER Mads Flensted-Urech, Coadu.com

RUN  echo 'deb http://archive.ubuntu.com/ubuntu quantal main universe' > /etc/apt/sources.list
RUN  apt-get update
RUN  apt-get install -y haskell-platform git wget
RUN  cabal update
