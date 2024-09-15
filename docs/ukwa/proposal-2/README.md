## UKWA Speed Championships

Author: Michael George

Created: 14 Aug 2024



### Overview

There is a desire to tweak the rules of the UKWA Speed Championships so that moderately windy days can become valid rounds. The current criteria are a simplification of the ISWC rulebook, which applies to international speed windsurfing competitions. Whilst the current UKWA rules work well for very windy days and light wind days, they don't always work so well for moderately windy days during Weymouth Speed Week.



### Chance Variability

The existing rules essential consider the results of a single rider, who is approximately 25% of the way from the top. Typically, 1 or 2 specific riders are capable of tipping the balance as to whether it is a counting round, or not. [Chance variability](chance-variability.pdf) means that results will never be perfectly distributed.  The results during a specific round may approximate a specific distribution, but they will always be affected by chance variability.

This can be illustrated using the 500 m rankings for Portland Harbour on GPS-Speedsurfing, representing almost 200 riders. It's worth noting that these are personal bests, and should not be regarded as typical results for Portland Harbour. It should also be noted that the distribution is not smooth or perfect, primarily because 500 m records can be affected by chance variability; rider, equipment, general conditions, lucky gust, etc.

![gp3s](img/gp3s.png)

Perhaps the simplest way to cope with chance variability is to also consider the performance of a second rider close to the middle of the fleet. A [proposal](../proposal-1/README.md) was drawn up during Nov 2023 which established a clear relationship between results around 25% and 50% of the fleet. The analysis used the data from all possible 116 UKWA rounds between 2010 and 2023.

The proposal was subsequently discussed by Pete Davis, Zara Davis, and Michael George at the WPNSA on 12 Aug 2024. The outcome of that meeting was consensus on an alternative proposal which addresses the potential causes for concern in the original proposal; e.g. 4 riders in light winds (including 2 foils doing 25 knots) being deemed a valid UKWA round.



### UKWA Rules

This next section will jump straight into rules that have been written for the notice of race (NOR).



#### Existing Rules

In recent years the UKWA has used the following rules for rounds to be considered valid:

> 1.1 Windsurfing Rounds will only count towards the UKWA windsurfing ranking, when 25% of the riders registered achieve over 28 knots two times. One completed round is needed to ratify the event.
>
> 1.2 Wing Foiling Rounds will only count towards the UKWA wing foiling ranking, when 25% of the riders registered achieve over 18 knots two time. One completed round is needed to ratify the event.

Strict interpretation of the 25% requirement means that a fleet of 23 riders requires 6 riders to achieve over 28 knots, twice.



#### Proposed Rules

The following rules are proposed for future UKWA rounds to be considered valid.

> 1.1 The // operator represents [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division), which only ever rounds down - e.g. 20 // 4 = 5, and 23 // 4 = 5.
>
> 2.1 Windsurfing rounds will count towards the UKWA windsurfing ranking, if both of the following conditions are met:
>
> - 2.1.1 There are at least 4 UKWA windsurfers who finish, referred to as the number of finishers (N<sub>F</sub>).
> - 2.1.2 The number of required finishers (N<sub>R</sub>) have a 2-run average of 28 knots (or higher), where N<sub>R</sub> = N<sub>F</sub> // 4.
>
> 2.2 Windsurfing rounds will also count towards the UKWA windsurfing ranking, if all of the following conditions are met:
>
> - 2.2.1 There are at least 4 UKWA windsurfers who finish, referred to as the number of finishers (N<sub>F</sub>).
> - 2.2.2 The 28 knots criteria is only missed because of one competitor, and they have a 2-run average of 27.5 knots (or higher).
> - 2.2.3 The number of required finishers (N<sub>R</sub>) have a 2-run average of 26 knots (or higher), where N<sub>R</sub> = N<sub>F</sub> // 2.
>
> 3.1 Wingfoiling rounds will count towards the UKWA wingfoiling ranking, if both of the following conditions are met:
>
> - 3.1.1 There are at least 4 UKWA wingfoilers who finish, referred to as the number of finishers (N<sub>F</sub>).
>- 3.1.2 The number of required finishers (N<sub>R</sub>) have a 2-run average of 25 knots (or higher), where N<sub>R</sub> = N<sub>F</sub> // 4.
> 
> 3.2 Wingfoiling rounds will also count towards the UKWA wingfoiling ranking, if all of the following conditions are met:
>
> - 3.2.1 There are at least 4 UKWA wingfoilers who finish, referred to as the number of finishers (N<sub>F</sub>).
>- 2.2.2 The 25 knots criteria is only missed because of one competitor, and they have a 2-run average of 27.5 knots (or higher).
> - 3.2.3 The number of required finishers (N<sub>R</sub>) have a 2-run average of 23 knots (or higher), where N<sub>R</sub> = N<sub>F</sub> // 2.
> 
> 4.1 A minimum of one completed UKWA round is required to ratify the event.

The 28 knots + 26 knots requirements (windsurfing - 2.1 and 2.2) and 25 knots + 23 knots requirements (wingfoiling - 3.1 and 3.2) have been written individually. The overriding goal has been to write the rules to be consistent, unambiguous, and easy to apply. There are several alternative ways to convey the same rules, including the use of reference tables.



### Validation

Analysis of all 116 possible UKWA rounds between 2010 and 2023 has been completed. The full analysis will not be written up in detail because it would take a long time to do so clearly. This document is merely a brief summary of the findings.

The scatter plot below shows the relationship between the 2-run averages recorded by 25 percent-ish versus 50 percent-ish of the fleet. The suffix "ish" has been used because the actual calculation is based on [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division), which only ever rounds down - e.g. 23 // 4 = 5.

The scatter plot shows at a glance which UKWA rounds are deemed valid since 2010, based on the old rules and newly proposed rules. The orange dots are the most important in the context of this proposal. 

![overview](img/overview.png)

It should be apparent that the orange dots are rounds that would be deemed valid by the new rules. The cluster that has been highlighted by an ellipse is due to the newly introduced 26 knots criteria, which only kicks in when a single competitor fails to meet the 28 knots criteria and by less than 0.5 knots.

Zooming in to the most interesting area, we can see that 4 rounds in 2022 and 2023 have been highlighted. The cluster within the ellipse is deemed valid under the mid-fleet criteria (2-runs average >= 26 knots) and the other orange dots are deemed valid because of the use of floor division (not the strict interpretation of 25%), or use of 2-run averages (not two runs).

![zoom](img/zoom.png)



Light orange dots to the right of 28 knots (x-axis) are due to the proposal to use floor division, instead of the strict interpretation of 25%. The dark orange dots are rounds that only satisfy the 28 knots / 26 knots criteria because the proposals uses 2-run averages, instead of requiring two runs in excess of 28 / 26 knots.

In total the new rules consider an additional 12 rounds to be valid since 2010, including 2 rounds from 2022 (>28 knots, floor division) and 1 round from 2023 (26 knots criteria). The new 26 knots criteria (approximating the middle of the fleet) is only ever applied under specific circumstances.



### Summary

This new proposal is the product of a discussion between Pete Davis, Zara Davis and Michael George on 12 Sep 2024.

The proposed rules are more lengthy than previous ones, but they have been written to be consistent, unambiguous, and easy to apply. The use of [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division) throughout keeps the rules straightforward, whether implementing them in software or applying them manually.

The scatter plots show 12 additional rounds that are deemed valid by the proposed rules. 3 of the 12 rounds were in 2022 and 2023, but there is one additional borderline case in 2023 . That borderline case was 11 Oct 2023 and is deemed invalid by the proposed rules.

The old rules deem 49 rounds valid between 2010 and 2023, so 12 additional rounds represents an increase of 25%. Looking back at the two scatter plots, it can be seen that the additional 12 rounds are essentially two distinct clusters. There is also one rogue orange dot amongst the greens!

Further analysis investigated use of the upper quartile and median, traditional rounding, and even considered [bankers rounding](https://wiki.c2.com/?BankersRounding). However, floor division was discussed during the meeting on 12 Sep 2024 and has been used throughout this proposal, ensuring simplicity and consistency.

This document covered a number of topics which may have been a little hard going for some readers, but hopefully it describes the new rules in unambiguous terms and demonstrates their effectiveness for anyone who is interested.



### Sources

Lecture notes by Elizabeth A. Thompson, professor of statistics at Washington University.

- STAT220: Basic Statistics - [CHANCE VARIABILITY](https://faculty.washington.edu/eathomp/S220_06/Lectures/notes6.pdf)
