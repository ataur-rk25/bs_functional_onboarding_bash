awk '{
    for (i = 1; i <= NF; i++) {
        if ($i == "in") {
            time = $(i + 1); 
            gsub(/ms/, "", time); 
            times[NR] = time
        }
    }
}
END {
    for (i = 1; i <= NR; i++) 
        print times[i]
    }' "logfile.log" | sort -nr | head -n 1 | awk '{printf "Maximum execution time: %d ms\n", $1}'


#1 line command for getting same output

grep "Completed" logfile.log | awk -F 'in|\\(' '{print $2}'| sort -nr | head -n 1 | awk '{printf "Max Execution time: %s\n", $1}'