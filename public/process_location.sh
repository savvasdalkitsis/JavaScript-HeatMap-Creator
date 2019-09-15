jq '.locations[] | {latitudeE7, longitudeE7}' location.json | jq -s '{locations: .}' >| location2.json
rm location.json
mv location2.json location.json
gzip -k location.json
