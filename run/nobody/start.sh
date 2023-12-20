#!/usr/bin/dumb-init /bin/bash

# run fdroid server
cd /config && exec /usr/bin/fdroid ${FDROID_COMMAND}