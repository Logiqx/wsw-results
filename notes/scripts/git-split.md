## sse-results

### git-filter-report

https://github.com/newren/git-filter-repo/

https://hub.docker.com/r/roemer/git-filter-repo



Keep:

- bin/*
  - *
- config/*
- docs
  - css
  - img
- events
  - ????
    - config
    - gpsdata
    - rundata
    - results
- python/*
- Dockerfile
- LICENSE
- README.md



```shell
$ git clone git@github.com:Logiqx/wsw-results.git
$ cd wsw-results

$ docker run --rm -it -v $PWD:/tmp2 git-filter-repo /bin/bash
$ cd /tmp2

$ git filter-repo --analyze

$ git filter-repo  \
    --path bin/ \
    --path config/ \
    --path docs/css/ \
    --path docs/fonts/ \
    --path docs/img/ \
    --path-glob 'events/*/config/' \
    --path-glob 'events/*/gpsdata/' \
    --path-glob 'events/*/results/' \
    --path-glob 'events/*/rundata/' \
    --path python/ \
    --path .gitignore \
    --path Dockerfile \
    --path LICENSE \
    --path README.md

$ git filter-repo \
    --path bin/hello.sh \
    --path config/.nationalities.csv.swp \
    --path config/countries.json \
    --path config/daily.json \
    --path config/iswc.json \
    --path config/leaderboard.json \
    --path config/stats.json \
    --path config/ukwa.json \
    --path config/reports/ \
    --path python/hello.ipynb \
    --path python/jinja_test.ipynb \
    --path python/templates/base.html \
    --path python/templates/child.html \
    --path python/templates/template.html \
    --path python/Untitled.ipynb \
    --path-glob 'events/*/results/*.xlsx' \
    --path-glob 'events/*/results/*.XLSX' \
    --path-glob 'events/*/results/ukwa/' \
    --path-glob 'events/*/rundata/*.xlsx' \
    --invert-paths

$ git reflog expire --expire=now --all && git gc --prune=now --aggressive

$ git filter-repo --analyze
```



```shell
$ #git remote set-url origin git@github.com:Logiqx/sse-results.git
$ git remote add origin git@github.com:Logiqx/sse-results.git
$ git remote -v
$ git push -u origin main
```



### wsw-results

- "www" folders only needed in wsw-results
- Remove Catalyst
  - Catalyst*

```shell
$ git filter-repo \
    --path docs/catalyst/ \
    --path notes/catalyst/ \
    --path resources/catalyst/ \
    --path bin/hello.sh \
    --path config/.nationalities.csv.swp \
    --path config/stats.json \
    --path python/hello.ipynb \
    --path python/jinja_test.ipynb \
    --path python/templates/base.html \
    --path python/templates/child.html \
    --path python/templates/template.html \
    --path python/Untitled.ipynb \
    --invert-paths
```



wsw-results-slim is 500MB smaller than wsw-results-fat

- 300MB git
- 100MB resources (catalyst)
- 70MB notes (event_data)
- 30MB events (wind_data)

