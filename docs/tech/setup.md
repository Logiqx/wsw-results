## Weymouth Speed Week

### Setting up New Event

#### Create Generic Banners

Edit bin/banners.sh to 2023 and run script.

PNG files will be in docs/img and need adding to git.



#### Tweak App Config

Change "Event" in config/server.json to "2023".

Change "History/Refresh" in config/app.json to "false" for faster testing.



#### Copy Previous Event

```sh
cp -rp events/2022 events/2023
```



#### Remove unneeded files

```sh
rm -r events/2023/config/sessions/* \
      events/2023/gpsdata/* \
      events/2023/gpslogs/* \
      events/2023/logs/* \
      events/2023/sailwave/*
```



#### Tweak Event Config

Change any occurrences of years and dates to October 2023



#### Seed First Session

```sh
cp -rp events/2022/config/sessions/20221015 events/2023/config/sessions/20231007
```

Ensure times are correct

```json
  "Leg 1": {
    "Start Time": "11:00:00",
    "End Time": "13:31:00"
  },
  "Leg 2": {
    "Start Time": "14:00:00",
    "End Time": "16:01:00"
  }
```



#### Seed Sailwave

```sh
cp -p ./resources/sailwave/template.blw events/2023/sailwave/
```



#### UKWA Members

Download the UKWA membership list using administrative [link](https://ukwindsurfing.com/admin/data/members/ )

Save as events/2023/config/ukwa.csv



#### Review Files

Review files and add to git

```sh
find events/2023 -type f | grep -v motions
git add events/2023
```

Do not commit previous entrants or motions

```sh
git restore --staged events/2023/config/entrants.csv
git restore --staged events/2023/config/motions.csv
```

Sanity checks

```sh
find events/2023/config -type f -exec grep -l 2022 {} \;
git status
```

