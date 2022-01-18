## TODO

A list of ideas + things left to do on this project. I'll pick away at these items over the next few weeks / months.




### Enhancements

- Create indices / index.html
  - Events + sessions + years
- Aesthetics
  - Event banners
  - Style sheets
    - Table formatting, text alignment, etc.
       https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Styling_tables
       https://www.w3schools.com/tags/tag_tfoot.asp
    - National Flags. Be sure to handle TBC.
    - Craft type icons, maybe even group reports based on craft type?
- WSW Records
  - Requires a "Record" class as the foundation
  - Rocket emoji to show runs that are faster than the record at the start of the day



### Tweaks

- Additional info
  - Timestamps for reports
  - Report number of entrants + count of countries. Maybe add to all tables without ranking?
  - Report number of runs; daily "all runs" and event. Maybe show for each person as well?
    - [Report total number of runs in the day / week](https://github.com/Logiqx/wsw-results/issues/22)
  - Event comments
    - 2005 and 2008 have "top 3" limitations
    - 2006 ~20% of sailboard fleet have unknown status
- Filter improvements
  - Should BKSA title include United Kingdom in the filter? James Longmuir to confirm
  - Ensure women sailboards exclude youths; various early years to check - 2005 to 2011?
- General
  - Intelligent handling of 's' for prizes - e.g. 3 sailboards / 1 sailboard
- Rename report sets
  - Rename "verification" to "bests"?
  - Rename "status" reports to "category"?



### Later

- Histories
  - Prize histories - Gold Fleet, etc.
  - Record histories - [Report new WSW records](https://github.com/Logiqx/wsw-results/issues/7) + [Report historical WSW records](https://github.com/Logiqx/wsw-results/issues/8)
- Series
  - UKWA - 2007 onwards but 2009 was not qualifying
  - ISWC - 2008 to 2012 but 2009 was not qualifying
  - WSW 2004 + any others?
- Charts
  - Scatter plots (showing all runs)
  - Histograms (distributions of times)
  - Box and whisker charts (craft comparison / day comparison)
- Entrants
  - Create entrants pages for events + sessions.
    - Create an index.html inside the entrants folder(s).
  - Profile pages
  - Indices to all years
  - Prize photos for past years
- Data quality
  - 2021 results are incomplete. Require data from Nick.
  - [Avoid duplicate runs in SBP + SBN files](https://github.com/Logiqx/wsw-results/issues/4)
  - [Report people exceeding their entry type (e.g. 2 days)](https://github.com/Logiqx/wsw-results/issues/12)
  - [Report people in the wrong fleet - amateur / gold / pro](https://github.com/Logiqx/wsw-results/issues/13)
  - [Report duplicate entrant names / IDs](https://github.com/Logiqx/wsw-results/issues/11)
  - [Auto-match unrecognised GPS units](https://github.com/Logiqx/wsw-results/issues/9)



### Documentation

- Tech documentation
  - Summarise reports
    - Weekly: Craft, Status, Fastest (fastest from craft and status), groups, entrants
    - Daily: Same as weekly (albeit with course + time) + verification report + all runs (by name and course)
    - Youths - weekend filter
    - Groupings - do not need to worry about bad case in entrants.csv
    - Make a note about odd reports like "eligible" (2014 + 2015)
    - Course lengths in 2000 + 2001
    - Youths
    - Need to sort when using run filters; e.g. course length and youths
  - Docker, etc
    - Windows/OSX/Linux, WSL
    - Jupyter
    - Docker Compose
    - Build, run, etc
  - Unit tests



### Trophies / Shields

History to be confirmed and applied to past results:

- Fastest Master - Windtek "Fastest Master" shield 2005-2008 confirmed, assume up to 2011 (last year of master)
- Fastest Youth - Tushingham "Fastest Youth" Shield 2005-2010 confirmed, maybe beyond?
- Fastest Overall - Thommen T1 Shield 2005-2008 ("Fastest of the Week" in 2005-2011, "Fastest Man" from 2012-2014)
- Fastest Lady - "The OTC Fastest Lady Award" 2005-2021 (formerly "Windtek Fastest Lady Shield"). When was it OTC?
- Gold Fleet - "Gold Fleet Fastest Sailor" 2008-2021
- Fastest Boat - "AYRS Pot" started in 2008 and still going (not sure if it is still the pot.
  New shield in 2011, evident in 2012 / 2013 photos.
- Fastest Kiteboard - Dakine Kite Speed Trophy (started in 2008, confirmed in 2010).
  Silver cup has 2014-2021 engravings but existed in 2013.
- Fastest Sailboard - Mistral Trophy (started in 2009 - when Anders was present). Confirmed in 2010. New shield from 2014-2021.
- UKWA - Spartan Speed Windsurfing Champion (2 trophies; men and women) 2007-2021
- BKSA - Speed Champion (started in at least 2010). Was it earlier? 1st, 2nd and 3rd glass trophies?