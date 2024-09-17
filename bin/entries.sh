# Project Env
. $(dirname $0)/env.sh

# Remove extra whitespace from latest entries
for ENTRIES in $(ls events/*/config/entries.csv)
do
  sed -i 's/ *$//;s/ *"/"/g;s/ *,/,/g' $ENTRIES
done

# Run the daily results
run_py_script entries.py

# Patch entries.csv and motions.csv
YEAR=$(date +%Y)
$(dirname $0)/fix_$YEAR.sh
