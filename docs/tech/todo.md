## Todo

This document contains a list of ideas + plans left to implement for the WSW Results project.

I've broken them into "additional features" (medium-sized pieces of development), "minor tweaks" (minor changes / enhancements) and "data quality" (data refinements / report definition changes).

The next major priority is automatic generation of series results for UKWA and ISWC events held during Weymouth Speed Week.

I'll pick away at all of the the items listed below over the next few months. likely on an intermittent basis!



### Additional Features

Full details of the following items can be found in the [todo](https://logiqx.github.io/sse-results/tech/todo.html) list of sse-results as they will become part of the generic code:

- UKWA + ISWC
  - The capability to generate competition "series" (ideally, 100% automatically) will benefit various organisations:
- Records
  - The record history of WSW is of particular interest.
- Prizes
  - Pages listing past prize winners over past years is also of interest, although not as high in priority as record histories.
- Entrants
  - Once the "records" and "prizes" features have been implemented it would be nice to show more information for individual entrants.
- Charts
  - The final set of ideas for new features is some charts / visualisations for sessions and events.

#### Excel Sync

Add an XLSX to CSV conversion to extract all of the WSW entrant details for the event. This is a bespoke application feature for WSW.

- Create Python script to do the initial conversion of the SSERPANT XLSX into CSV, rather than doing it manually.
- Create Python script to sync the latest XLSX to the CSV, rather than doing it manually.
  - Additional entrants
  - Additional GPS IDs / serials
  - Changes to craft type, status, "first timer" flag, entry type, gender, etc.



### Minor Tweaks

Full details of the following items can be found in the [todo](https://logiqx.github.io/sse-results/tech/todo.html) list of sse-results as they will become part of the generic code:

- Navigation
  - The website requires some improved navigational features.
- Additional Information
  - There are some trivial data items to add to several pages.
- Internal Changes
  - These items are entirely internal changes but the project would benefit from these internal tweaks (aka re-factoring).

#### Aesthetics

The WSW pages are relatively clean looking but some minor improvements for might be worthwhile.

- Better WSW banners; need to speak to Nick:
  - 2007, 2008, 2010, 2011 and 2012 are perfect
  - 2009 may exist somewhere?
  - 2013 is low resolution and there may be a better one somewhere?
  - The font for generic banners might be improved. What is the TTF font name?



### Data Quality

There are some further WSW data quality checks that can be undertaken but they are not a high priority.

- Some of the report filters might benefit from minor tweaks:
  - BKSA trophy may require a "United Kingdom" filter? James Longmuir to confirm.
  - Decide if "lady sailboard" category should exclude youths in the earlier years; 2005 to 2010?
  - Decide if "fastest man" and "fastest lady" should also exclude youths?
- Check youth fleet ages in XLSX files - 2010 onwards.
  - This isn't critical because all of the the prize winners since 2005 are definitely correct.
- Remove runs going back up the course?