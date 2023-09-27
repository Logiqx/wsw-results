# Project Env
. $(dirname $0)/env.sh

# Remove extra whitespace
YEAR=$(date +%Y)
sed -i 's/ *$//;s/ *,/,/g' events/$YEAR/config/entries.csv

# Run the daily results
run_py_script entrants.py
