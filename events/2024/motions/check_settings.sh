for i in code name speed_unit distance_unit gnss_rate one_log_per_day timezone
do
  grep -h $i */settings* | sort -u;
done
