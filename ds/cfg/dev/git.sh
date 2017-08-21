#!/bin/bash
### Useful for updating or checking the status of all git repositories.
### For example:
###    git.sh status --short
###    git.sh pull

options=${@:-status --short}
gitrepos="
    /var/www/bcl*/profiles/btr_client
    /usr/local/src/btr_client
"
for repo in $gitrepos
do
    echo
    echo "===> $repo"
    cd $repo
    git $options
done
