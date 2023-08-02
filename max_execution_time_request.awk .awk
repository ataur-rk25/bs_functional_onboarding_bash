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