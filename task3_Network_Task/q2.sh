#!/bin/bash

DOMAIN="guvi.com"
PORT=9000

echo "---- Checking whether the application deployed on $DOMAIN:$PORT is accessible ----"

echo ""
echo "Verifying if port $PORT is listening  on the server:"

netstat -tulnp | grep :$PORT

echo""

if netstat -tulnp | grep -q :$PORT; then
    echo "Port $PORT is open and the application is running."
    echo "Tf page is not loading, check firewall or network settings."
else
    echo "Port $PORT id not open."
    echo "The application may not be listening or the port may be blocked."
fi 
