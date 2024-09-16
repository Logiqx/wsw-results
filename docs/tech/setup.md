## Weymouth Speed Week

### Setting up New Event

This example will use 2024 for illustration purposes.



#### Project Folder

```sh
cd ~/projects/work/wsw-results
```



#### Create Generic Banners

```sh
vi bin/banners.sh
```

Change the year to "2024" and range of years to "1998 - 2023".

```sh
bin/banners.sh
```

Review the PNG files in docs/img and if they look ok, add them to git.

```sh
git add bin/banners.sh docs/img/wswlogo_all.png docs/img/wswlogo_2024.png
git commit -m "Add banner for 2024"
```



#### Tweak App Config

Change "Event" in config/server.json to 2024.

```sh
vi config/server.json
git commit -m "Update server config for 2024" config/server.json
```

Change "History/Refresh" in config/app.json to "false" for faster testing.

```sh
vi config/app.json
```



#### Copy Previous Event

Copy previous event, since it will be a good template.

```sh
YEAR=2024
cp -rp events/2023 events/$YEAR
```



#### Remove unneeded files

Remove files that were specific to the previous event.

```sh
rm -r events/$YEAR/config/sessions/* \
      events/$YEAR/gpsdata/* \
      events/$YEAR/logs/* \
      events/$YEAR/sailwave/*
```

If GPS logs are present then remove them as well.

```sh
rm -r events/$YEAR/gpslogs/*
```



#### Tweak Event Config

Change any occurrences of years and dates to October 2023

```sh
vi events/$YEAR/config/event.json
```



#### Seed First Session

Copy a template sessions and ensure times are correct.

```sh
cp -rp events/2023/config/sessions/20231007 events/2024/config/sessions/20241012
more events/2024/config/sessions/20241012/*
```

Ensure times are correct

```json
::::::::::::::
events/2024/config/sessions/20241012/courses.json
::::::::::::::
{
  "Default": {
    "Start Time": "11:00:00",
    "End Time": "16:01:00"
  }
}
::::::::::::::
events/2024/config/sessions/20241012/ukwa.json
::::::::::::::
{
  "Leg 1": {
    "Start Time": "11:00:00",
    "End Time": "13:31:00"
  },
  "Leg 2": {
    "Start Time": "14:00:00",
    "End Time": "16:01:00"
  }
}
```



#### Seed Sailwave

```sh
cp -p ./resources/sailwave/template.blw events/2024/sailwave/
```



#### UKWA Members

Copy the UKWA membership [list](https://ukwindsurfing.com/admin/data/members/ ) into events/2024/config/ukwa.csv

```
vi events/2024/config/ukwa.csv
```



#### Review Files

Review files and add to git

```sh
find events/2024 -type f | grep -v motions
git add events/2024
```

Do not commit previous entrants or motions

```sh
git restore --staged events/2024/config/entries.csv
git restore --staged events/2024/config/entrants.csv
git restore --staged events/2024/config/motions*.csv
git restore --staged events/2024/config/motions-extra.csv
```

Sanity checks

```sh
git status $(find events/2024/config -type f -exec grep -l 2023 {} \;)
git status
```

