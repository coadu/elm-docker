git fetch origin
git checkout master
git merge origin/master
cabal update
cabal install --only-dependencies
cabal configure
cabal build
cabal install
