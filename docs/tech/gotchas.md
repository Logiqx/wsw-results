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

TODO - document how to handle the following scenarios:

- What to do if an entrant's GT-31 needs to be replaced mid-competition.
- What to do when a competitor uses the wrong GT-31 during a session.
  - For example, sailboard + kiteboard entrant (two GT-31 units) takes their sailboard GT-31 out whilst kiteboarding.
  - Another example might be a competitor who realises their battery is low mid-session so starts using their other GT-31.
- What to do if a GT-31 being taken onto the water with the wrong username.
  - Although this should not happen due to the registration process it is not an impossibility!



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
  - Experienced competitors should not be be down as a "first timer".
- Riders will be excluded from the daily UKWA results if they didn't tick the "UKWA member" box during registration.
  - The UKWA flag can be updated on their entry details and the UKWA reports can then be re-run.

