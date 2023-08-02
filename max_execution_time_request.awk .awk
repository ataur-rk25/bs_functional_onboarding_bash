awk '{
    for (i = 1; i <= NF; i++) {
        if ($i == "in") {
            time = $(i + 1); 
            gsub(/ms/, "", time); 
            records[NR] = $0; times[NR] = time
        }
    }
}
END {
    for (i = 1; i <= NR; i++) {
        output = times[i] " " records[i]; print output
    }
}' "logfile.log" | sort -nr | head -n 1 | awk '{for (i = 2; i <= NF; i++) printf "%s ", $i}'

#1 line command for getting same output

grep "Completed" logfile.log | awk -F 'in|\\(' '{print $2, "Completed " $0}' | sort -nr | head -n 1 | awk '{sub(/^[^C]*Completed /, ""); print}'