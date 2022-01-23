## Tricks and Tips

All of the configuration files are either a JSON or CSV.

It is possible to search them efficiently using tools such as *jq* and *csvkit*.




### jq

Install *jq* with `sudo apt-get install python3-csvkit`

List of the the groupings being reported:
```
jq '.Event.Name, .Entrants.Grouping' events/*/config/event.json
```

List of the the craft types allowed each year:
```
jq '.Event.Name, .Entrants."Craft Type"' events/*/config/event.json
```



### csvkit

Install *csvkit* with `sudo apt install python3-csvkit`

List all of the GT-31 IDs in a specific year:
```
csvcut -c "GT31 ID" events/2014/config/entrants.csv
```

List all of the tally numbers in a specific year, derived from GT-31 IDs:
```
csvcut -c "GT31 ID" events/2014/config/entrants.csv | sed 's/[A-Za-z]//g' | sort -n
```

List all members of a grouping such as "Portland Pirates" in a specific year:
```
csvgrep -c "Grouping" -m "Portland Pirates" events/2021/config/entrants.csv | csvcut -c "First Name,Family Name"
```

List all members of a grouping such as "Portland Pirates" across all years since 2010:
```
for i in events/20[12]?/config/entrants.csv
do
  csvgrep -c "Grouping" -m "Portland Pirates" $i | csvcut -c "First Name,Family Name"
done | grep -v "First Name,Family Name" | sort -u
```