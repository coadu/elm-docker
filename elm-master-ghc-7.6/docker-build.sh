git fetch origin
git checkout origin/master
cabal update
cabal install --only-dependencies
cabal configure
cabal build
cabal install
