for i in events/*/logs/server.log
do
    echo $i
    grep "downloaded" $i | awk '{a += $10} END {print "TOT DIST  " a " km"}'
    grep "downloaded" $i | sed 's/_.*oao / /' | awk '{a[$3] += $10} END {for (i in a) print i, a[i]}' | sort -k2 -n -r | head -10
    echo
done
