GHC=7.8
MAINTAINER="Mads Flensted-Urech, Coadu.com"
MAINT=coadu

cat > Dockerfile << EOF1
FROM stackbrew/haskell:$GHC

MAINTAINER $MAINTAINER

RUN  cabal update
EOF1

IMAGE=$MAINT/elm-ghc-$GHC
docker build -t $IMAGE .

cat > Dockerfile << EOF2
FROM $IMAGE

MAINTAINER $MAINTAINER

RUN  wget https://raw.githubusercontent.com/elm-lang/elm-platform/master/src/BuildFromSource.hs
EOF2

IMAGE=$MAINT/elm-src-ghc-$GHC
docker build -t $IMAGE .

BRANCH=0.13
cat > Dockerfile << EOF3
FROM $IMAGE

MAINTAINER $MAINTAINER

RUN /bin/bash -c "cd /usr/src && runhaskell BuildFromSource.hs $BRANCH"
EOF3

IMAGE=$MAINT/elm-$BRANCH-ghc-$GHC
docker build -t $IMAGE .
