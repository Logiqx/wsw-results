## Gotchas

2018 saw quite a few technical issues, many of which have been remedied through enhancements and fixes to the SSERPANT software and within this project.

A few of the issues cannot be remedied through software alone so this document has been created for mitigation purposes.



### Registration

During registration there are several possible reasons that GT-31's are not being read by the laptop.

Problem 1:

- The first problem is simply that the software is using the wrong COM port.
  - Use the "settings" menu to refresh the list of COM ports and select the correct one - e.g. COM4.

Problem 2 - 2018:

- USB connector only seems to charge the GPS and does not respond to the PC when in Navilink mode.
  - Update the device information in the Sserpant DB (using a SQL update) and / or the entrants JSON.

Problem 3 - 2021:

- The Polific driver may get upgraded by a Windows update and become "too new" to work properly!
  - The fix is to remove the device via Device Manager then repair, un-install and re-install the Prolific driver.



### GT-31s

Scenario 1 - What to do if an entrant's GT-31 needs to be replaced mid-competition:
  - Option 1: Register a second GT-31 via "event registration" on the SSERPANT laptop.
      - n.b. This will assign a new tally number and should register an additional GT-31 ID against the entrant.
  - Option  2: Manually configure a new GT-31 to have the same ID as the original; e.g. GEORG8MICHA.
      - n.b. This allows the tally number to be retained by the entrant and may reduce the risk of any confusion.

Scenario 2 - What to do when a competitor uses the wrong GT-31 during a session.

- Option 1: Temporarily change the ID of the GT-31, "save to card" and try to re-read the card using the "end of day" process.
  - n.b. This can only be done if "end of day" process is still underway.
- Option 2: Temporarily change the ID of the GT-31, "save to card" and manually copy the file onto the GPSResults laptop.
  - n.b. This can only be done if the GPSResults analysis has not been completed.
- Option 3: If the course runs have already been processed by GPSResults then it might be pragmatic to modify the output CSV.
  - n.b. This may be the only practical option available if the GPSResults analysis has been completed.

**IMPORTANT**: 

- Using the wrong GT-31 could lead to spurious results and rankings. How this is handled will therefore require careful consideration!
- Will need to **check** if the original SBN/SBP files were copied to the SSERPANT laptop (during "end of day") and GPSResults laptop.
- Will have to **delete** the original SBN/SBP files that were copied to the SSERPANT laptop (during "end of day") and GPSResults laptop.
- Modification of the GPSResults output may be pragmatic but the original SBN/SBP files should still be removed from other laptops.



### GPSResults

Checklist for course timings:

- Specify time zone as +1 hour in GPSResults, prior to entering the course time limits.
- Add 1 minute to the "stop time" because the time filter uses the end times, not the start times.

Checklist for shore courses:

- Ensure the correct "track length" option is used; must be "500m start line" and not the default "500m".
- Ensure the shore course is wide enough for any runs far from the beach to be counted.

Checklist for harbour courses:

- If the start buoys drifted during the session then a good workaround is to use a "500m start line" course.



### Reports

The Excel macros will be completely replaced in 2022 so most of the legacy issues will disappear.

However, still keep an eye out for the following during the week:

- Session times should be specified within the new daily reporting as well as within GPSResults; belt and braces!
  - If any runs output by GPSResults are rejected by the reporting then the time limits need to be double-checked.
- Queries about missing runs should (hopefully) not be a common occurrence if the GPSResults checklist is followed.
  - e.g. Harbour courses should set as a "500m start line", should the buoys have drifted slightly during the session.
- Queries about surprisingly "slow runs" should not be a common occurrence if the GPSResults checklist is followed.
  - e.g. Thursday of 2021 initially used the default "track length" option of "500m" instead of the "500m start line".
- People may accidentally sign up for the wrong fleet. For example:
  - People who were previously on the podium of the amateur fleet or the winner of the gold fleet.
  - Sponsored riders should not be in the amateur fleet.
  - Experienced amateurs should not be be down as a "first timer".
- Riders will be excluded from the daily UKWA results if they didn't tick the "UKWA member" box during registration.
  - The UKWA flag can be manually updated on their entry details, followed by a simple re-run of the reports.

