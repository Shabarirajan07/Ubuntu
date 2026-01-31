#!/bin/bash

DOMAIN="guvi.in"

echo "--- Get IP Address od Domain ---"
nslookup $DOMAIN | grep Address

echo ""
echo "---- CPU Usage----"
uptime

echo ""
echo "---- Memory Usage ----"
free -h

echo ""
echo "---- Connectivity Test ----"
ping -c 4 $DOMAIN
