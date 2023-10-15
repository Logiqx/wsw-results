grep motion- events/2023/logs/server.log | egrep -v 'conn|battery|detected|storage|firmware|downloaded' | sed 's/ [A-Z].*//;s/ .*,/,/' | sort >0
sort -u 0 >1
diff 1 0
