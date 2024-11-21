#!/bin/bash

TOKEN="BFqqPop3v4QulT6vQH3TeKe9bZpzUPlJ"  # The API v2 OAuth token
ACCOUNT_ID="1602"        # Replace with your account ID
ZONE_ID="gautema.com"  # The zone ID is the name of the zone (or domain)
RECORD_ID="48437180"       # Replace with the Record ID
IP=`curl --ipv4 -s http://ipv4.icanhazip.com/`

curl -H "Authorization: Bearer $TOKEN" \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -X "PATCH" \
     -i "https://api.dnsimple.com/v2/$ACCOUNT_ID/zones/$ZONE_ID/records/$RECORD_ID" \
     -d "{\"content\":\"$IP\"}"