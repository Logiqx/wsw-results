for i in code name special speed distance
do
  grep -h $i */info* | sort -u
done
