# Project Env
. $(dirname $0)/env.sh

# Consolidate SailWave data
YEAR=$(date +%Y)
for session in $PROJ_DIR/events/$YEAR/sailwave/20??????
do
    # Explanation of the awk command at https://stackoverflow.com/a/16890695
    awk 'FNR==1 && NR!=1{next;}{print}' $session/*.csv >$session-overall.csv
    awk 'FNR==1 && NR!=1{next;}{print}' $session/*Sailboard*.csv >$session-sailboard.csv
    awk 'FNR==1 && NR!=1{next;}{print}' $session/*Wingboard*.csv >$session-wingboard.csv
done
