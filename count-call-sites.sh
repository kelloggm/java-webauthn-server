#!/bin/sh

knownFPs=9 # I inspected all the results of the grep commands below and counted how many weren't actually lombok builders. The answer is 9: 3 from CacheBuilder, 6 from Response

result=`grep -R ".build(" webauthn-server-attestation/src/main/java webauthn-server-core/src/main/java webauthn-server-demo/src/main/java yubico-util/src/main/java | grep -v "uriInfo"  | wc -l | bc`

echo "$result - $knownFPs" | bc
