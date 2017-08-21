#!/bin/bash -x

source /host/settings.sh

# setup cron
cat <<EOF > /etc/cron.d/twitter
### first create a user with `adduser twitter`
0 4 * * *  twitter  /var/www/bcl/profiles/btr_client/utils/twitter.sh > /dev/null 2>&1

### uncomment this line only for debugging
#*/5 * * * *  twitter  /var/www/bcl/profiles/btr_client/utils/twitter.sh
EOF
