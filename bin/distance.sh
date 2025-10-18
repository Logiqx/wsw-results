grep "downloaded" events/2025/logs/server.log | sed 's/_.*oao / /' | awk '{a[$3] += $10} END {for (i in a) print i, a[i]}' | sort -k2 -n -r | head -10
