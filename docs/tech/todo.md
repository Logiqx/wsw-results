## Todo

This document contains a list of ideas + plans left to implement for this project. Where applicable I have added links to items on GitHub.

I've broken them into "tweaks" (minor changes or enhancements) and "features" (medium or large pieces of development).

The next major priority is automatic generation of series results for UKWA and ISWC events held during Weymouth Speed Week.

I'll pick away at all of the the items listed below over the next few months. likely on an intermittent basis!



### Tweaks

#### Navigation

The website requires some improved navigational features:

- Add "banner" navigation; clicking on the banner should go to the main event page.
- Add [Pushy](https://chrisyee.ca/pushy/) menu for site navigation.

#### Additional info

There are some trivial data items to add to several pages:

- Add timestamps to pages, perhaps using the timestamp of the GPSDATA / RUNDATA?
- Report the number of entrants + countries. Maybe add to all tables without rankings?
- Report number of runs; daily "all runs" and during the event. Maybe show for each person as well?
  - GitHub - [Report total number of runs in the day / week](https://github.com/Logiqx/wsw-results/issues/22)
- Add event comments where applicable. For example:
  - 2005 and 2008 have "top 3" limitations with the categories.
  - 2006 ~20% of sailboard fleet have unknown status.

#### Filter improvements

Some of the report filters might benefit from minor tweaks:

- BKSA trophy may require a "United Kingdom" filter? James Longmuir to confirm.
- Decide if "lady sailboard" category should exclude youths in the earlier years; 2005 to 2010?
- Decide if "fastest man" and "fastest lady" should also exclude youths?

#### Aesthetics

The pages are relatively clean looking but some minor improvements might be worthwhile.

- Page descriptions (browser tab names) should be improved for the main page and event pages.
  - "Weymouth Speed Week" or "Weymouth Speed Week 2021") would be better than "Events" or "Event".
- Craft type icons, maybe even group all of the reports based on craft type?
- Useful references:
  - https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Styling_tables
  - https://www.w3schools.com/cssref/css_selectors.asp
  - http://www.javascriptkit.com/dhtmltutors/cssmediaqueries2.shtml

#### Internal

These items are entirely internal but the project would benefit from these internal tweaks.

- Use different jinja pages for the various index pages.
- Automatic handling of the letter 's' in prize comments - e.g. "3 sailboards" vs "1 sailboard".



### Features

The categories below have been ordered in an approximate order of priority.

#### UKWA + ISWC

The capability to generate series results 100% automatically will be shared by various organisations:

- UKWA - 2007 onwards but 2009 was not qualifying.
- ISWC - 2008 to 2012 but 2009 was not qualifying.
- WSW - 2004 had a series results which can be replicated.

#### Records

The record history of WSW is of particular interest.

- Requires a "Record" class to be created as the foundation.
- Rocket emoji 🚀 to indicate the presence of runs that were faster than the previous record at the start of the day.
  - GitHub - [Report new WSW records](https://github.com/Logiqx/wsw-results/issues/7)
  - GitHub - [Report historical WSW records](https://github.com/Logiqx/wsw-results/issues/8)

#### Prizes

Pages listing prize winners over the years is also of interest, although not as high priority as record histories.

- Prize histories - Gold Fleet, etc.
- Prize photos for past years:

#### Entrants

Once the above features have been implemented it would be nice to show more information for individual entrants.

- Session and event summaries for all entrants.
- Create index.html pages for all entrants inside the sessions and event folders.
- Profile pages showing entrant participation over all available years, linking to event summaries.
  - GitHub - [Report people in the wrong fleet - amateur / gold / pro](https://github.com/Logiqx/wsw-results/issues/13)

#### Charts

The final set of ideas for new features is some charts / visualisations for sessions and events.

  - Scatter plots, showing all runs
  - Histograms, showing distributions of times
  - Box and whisker charts, showing craft comparisons / day comparison



### Data Quality

There are some further data quality checks that can be undertaken but they are not a high priority.

- Check youth fleet ages in XLSX files - 2010 onwards.
  - This isn't critical because all of the the prize winners since 2005 are definitely correct.
- Remove runs going back up the course?
  - Suspect this only happened in 2010 when the first GPS event was run.
  - Originally identified by the presence of apparent "duplicate" runs based on times < 2 mins apart.
  - e.g. Neil Hardwick on 20 Oct 2010; 14:39:52 (90.0°) and 14:41:21 (278.4°).
    - This issue is also evident for Thomas Jundt on the same day in 2010
  - Possible identification when angle >= 135° different to the fastest runs on the course?
