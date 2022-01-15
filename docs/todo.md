### Enhancements

- Implement "Youth Weekend" using DOW filter
- Create index.html for events + sessions + years
- Aesthetics
  - Event banners
  - Style sheets
    - Table formatting, text alignment, etc.
       https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Styling_tables
       https://www.w3schools.com/tags/tag_tfoot.asp
    - National Flags
    - Craft icons



### Tweaks

- WSW Records
  - Requires a "Record" class as the foundation
  - Rocket emoji to show runs that are faster than the record at the start of the day
- Filter improvements
  - BKSA should be country GBR?
  - Ensure women sailboards exclude youths (various years to check)
- Additional info
  - Course length in 2000 and 2001
  - Timestamps for reports
  - Report number of entrants + count of countries. Maybe add to all tables without ranking?
  - Report number of runs; daily "all runs" and event. Maybe show for each person as well?
  - Session comments (e.g. runs for first day of 2005)
    - Event comments e.g. 2006 (~20% of sailboard fleet have unknown status). 2005 and 2008 also have "top 3" limitations.
    - 2011 pro/gold/am kite reports have been intentionally omitted
- Data cleansing
  - Case insensitive fixing of status / craft (Wing-fleet, etc)
  - Intelligent handling of 's' for prizes - 3 sailboards / 1 sailboard
  - Detect switched names?
- Rename "status" reports to to "category"?



### Later

- Prize histories
- Record histories
- Series (UKWA / ISWC / early speed week ranking)
- Charts - Scatter plots, histograms, box and whiskers
- Entrants

  - Prize photos
    - Create entrants pages for events + sessions.
      - Create an index.html inside the entrants folder(s).
    - Profile pages



### Data Fixes

- "The Swedish guy that came over with Bjorn originally put himself down as an amateur fleet and we moved him to gold" (Pete D)
  - Confirm if this was this Erik Larsson in 2021



### Documentation

- reconciliation documentation
  - Move various notes.txt into reconciliation.md
- tech documentation
  - Summarise reports
    - Weekly: Craft, Status, Fastest (fastest from craft and status), groups, entrants
    - Daily: Same as weekly (albeit with course + time) + verification report + all runs (by name and course)
    - Youths - weekend filter
    - Groupings - do not need to worry about bad case in entrants.csv
    - Make a note about odd reports like "eligible" (2014 + 2015)
    - Course lengths in 2000 + 2001
  - Docker, etc
    - Windows/OSX/Linux, WSL
    - Jupyter
    - Docker Compose
    - Build, run, etc
  - Unit tests



### Shields
  Fastest Master - Windtek "Fastest Master" shield 2005-2008 confirmed, assume up to 2011 (last year of master)
? Fastest Youth - Tushingham "Fastest Youth" Shield 2005-2010 confirmed, maybe beyond?
  Fastest Overall - Thommen T1 Shield 2005-2008 ("Fastest of the Week" in 2005-2011, "Fastest Man" from 2012-2014)
? Fastest Lady - "The OTC Fastest Lady Award" 2005-2021 (formerly "Windtek Fastest Lady Shield"). When was it OTC?

  Gold Fleet - "Gold Fleet Fastest Sailor" 2008-2021
  Fastest Boat - "AYRS Pot" started in 2008 and still going (not sure if it is still the pot)
                 New shield in 2011, evident in 2012 / 2013 photos
  Fastest Kiteboard - Dakine Kite Speed Trophy (started in 2008, confirmed in 2010).
                      Silver cup has 2014-2021 engravings but existed in 2013.
? Fastest Sailboard - Mistral Trophy (started in 2009 - when Anders was present). Confirmed in 2010. New shield from 2014-2021.

  UKWA - Spartan Speed Windsurfing Champion (2 trophies; men and women) 2007-2021
? BKSA - Speed Champion (started in at least 2010). Was it earlier?
         1st, 2nd and 3rd glass trophies
