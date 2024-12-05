#!/bin/bash


export GLOBUS_SITE_TITLE=${GLOBUS_SITE_TITLE:-"Globus static site to display data"}
export GLOBUS_CLIENT_ID=${GLOBUS_CLIENT_ID:-"eb9e7c0d-1f6e-4a33-ab69-ecc844ad4e7b"}
export GLOBUS_COLLECTION_ID=${GLOBUS_COLLECTION_ID:-"c8a0088f-f0e5-4807-a6a4-7b2aa122ccd8"}
export GLOBUS_BASE_PATH=${GLOBUS_BASE_PATH:-"/"}
export GLOBUS_HEADER_IMAGE=${GLOBUS_HEADER_IMAGE:-null}
export HTTP_PORT=${HTTP_PORT:-3000}

envsubst < static.json.tmp > static.json

npm run build
serve -n -l ${HTTP_PORT} out 