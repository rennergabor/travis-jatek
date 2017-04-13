#!/bin/bash

set -ev

if [ "${VIRGO_VERSION}" = "3.7.0" ]; then
	TEST_URL=https://localhost:8443/
else 
	TEST_URL=http://localhost:8080/
fi

echo $TEST_URL
