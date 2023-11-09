ls -l events/*/gpsdata/*/* | sed 's/.*GPSDATA_//;s/[1-9]\.csv//;s/_/,/'  | sort -u >resources/ukwa/courses.csv
