#!/bin/bash -ex

if [ -w "Berksfile.lock" -a "$UPGRADE_DEPENDENCIES" = "true" ]
then
  bundle update
else
  bundle install --without development
fi

# git clone $GIT_URL $DOCS_DIR

# sudo apt-get install graphviz
# sudo pip install sphinx
# mkdir -p build/logs
# pear channel-discover pear.phpdoc.org
# pear install phpdoc/phpDocumentor
# phpenv rehash
# set +H
