awk '{
    for (i = 1; i <= NF; i++) {
        if ($i == "GET" || $i == "POST") {
            endpoint = $(i + 1)
            gsub(/\?[^"]*/, "", endpoint)  # Changed the regex to remove ? and values after it without ending quote
            endpoints[$i " " endpoint " "]++
        }
    }
}

END {
    for (endpoint in endpoints) {
        print endpoints[endpoint], endpoint 
    }
}' "logfile.log"| sort -nr