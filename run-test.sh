#!/bin/bash

set -e

if [ "${VIRGO_VERSION}" = "3.7.0" ]; then
	TEST_URL=https://localhost:8443/
else 
	TEST_URL=http://localhost:8080/
fi

echo $TEST_URL
# wait until Virgo is available and test with Splashscreen
for i in 1 2 3
do
  echo "Trying $TEST_URL for $i. time..."
  wget --retry-connrefused --waitretry=3 --read-timeout=30 --timeout=15 -t 10 -O /dev/null $TEST_URL && break || sleep 10; 
done

