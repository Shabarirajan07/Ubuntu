URL="https://guvi.in"

Status_Code=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "HTTP Status Code: $Status_Code"

if [ "$Status_Code" -eq 200 ] ;then
    echo "Success: Website is reachable"
else
    echo "Failure: Website is not reachable"
fi
