#!/usr/bin/dumb-init /bin/bash

# run fdroid server
cd /config && /usr/bin/fdroid ${FDROID_COMMAND}

# kill supervisord to force shutdown of container
pkill -f "supervisord"
