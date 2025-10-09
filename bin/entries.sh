# Project Env
. $(dirname $0)/env.sh

# Remove extra whitespace from latest entries
for ENTRIES in $(ls events/*/config/entries.csv)
do
  sed -i 's/ *$//;s/ *"/"/g;s/ *,/,/g' $ENTRIES
done

# Patch entries.csv and motions.csv
YEAR=$(date +%Y)
$(dirname $0)/fix_$YEAR.sh

# Process the entries
run_py_script entries.py

# Run the daily results
run_py_script results.py

# Update the event rankings
run_py_script rankings.py
