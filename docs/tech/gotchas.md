## Gotchas

2018 saw quite a few technical issues, many of which have been remedied through enhancements and fixes to the software.

A few of the issues cannot be remedied through software alone so these notes have been created for mitigation purposes.



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



### GPS Devices

TODO - document the following scenarios:

- What to do if an entrant's GPS needs to be replaced mid-competition.
- What to do when a competitor uses the wrong GPS during a session.
  - e.g. A windsurf + kite entrant (i.e. two GPS units) takes their windsurf GPS out whilst kiting.
  - Another example might be a competitor who realises their battery has gone flat out mid-session so takes their other device.
- What to do if a GPS being taken onto the water with the wrong username.
  - Although this should not happen due to the registration process it is not an impossibility!



### GPSResults

Checklist for timings:

- Specify time zone as +1 hour, prior to setting time limits.
- Add 1 minute to the stop time because the time filter uses the run's end time, not the start time.

Checklist for shore course:

- Ensure the correct "track length" option is used; must be "500m start line" and not the default "500m".
- Ensure the shore course is wide enough for any runs far from the beach to be counted.

Checklist for harbour course:

- If the start buoys drifted during the session then a good workaround is to use a "500m start line" course.



### Reports

The Excel macros will be completely replaced in 2022 so most of the legacy issues will disappear.

However, still keep an eye out for the following during the week:

- Session times can be specified within the daily reporting as well as GPSResults; belt and braces!
  - If any runs are output by GPSResults but rejected by the reporting then the time limits need to be checked.
- Queries about missing runs should (hopefully) not be a common occurrence if the GPSResults checklists are followed.
  - e.g. Harbour courses should set as a "500m start line" if the buoys drifted during the session.
- Queries about seemingly slow speeds should not be common occurrence if the GPSResults checklists are followed
  - e.g. Thursday of 2021 initially used the default "track length" option of "500m" instead of "500m start line".
- People may accidentally sign up to the wrong fleet. For example:
  - People who were previously on the podium of the amateur fleet or winner of the gold fleet.
  - Sponsored riders should not be in the amateur fleet.
- Riders will be missing from the daily UKWA results if they didn't tick the "UKWA member" box during registration.
