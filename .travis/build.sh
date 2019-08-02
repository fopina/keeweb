#!/bin/bash

cd $(dirname $0)
cd ..

docker run -v $(pwd):/srv -iw /srv fopina/misc:keeweb_builder bash <<EOF
npm install
grunt build-web-app
EOF