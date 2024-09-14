## UKWA Speed Championships

Author: Michael George

Created: 14 Aug 2024



### Overview

There is a desire to tweak the rules of the UKWA Speed Championships so that moderately windy days can become valid legs. The current criteria are a simplification of the ISWC rulebook, which apply to international speed windsurfing competitions. Whilst the ISWC rules work fine for very windy days and light wind days, they don't always work so well for moderately windy days during the UKWA event.

A proposal was drawn up during Nov 2024 and subsequently discussed by Pete Davis, Zara Davis, and Michael George. The outcome of this discussion has been to produce a second proposal which brings similar benefits, but avoids some of the scenarios which may be cause for concern. This document will discuss the new proposal and provide a summary of the effects it has when applied to historical data.



### Existing Rules

In recent years the UKWA has used the following criteria for legs to be considered valid:

> 1.1 Windsurfing Rounds will only count towards the UKWA windsurfing ranking, when 25% of the riders registered achieve over 28 knots two times. One completed round is needed to ratify the event.
>
> 1.2 Wing Foiling Rounds will only count towards the UKWA wing foiling ranking, when 25% of the riders registered achieve over 18 knots two time. One completed round is needed to ratify the event.



### Proposed Rules

The following criteria are proposed for legs to be considered valid, where the // operator represents [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division).

> 1.1 Windsurfing rounds will count towards the UKWA windsurfing ranking, if both of the following conditions are met:
>
> - There are at least 4 UKWA windsurfers who finish the round, from hereon referred to as the number of finishers.
> - The required number of finishers have a 2-run average of 28 knots (or higher). The requirement is total number of finishers // 4.
>
> 1.2 Windsurfing rounds will also count towards the UKWA windsurfing ranking, if all of the following conditions are met:
>
> - There are at least 4 UKWA windsurfers who finish the round, from hereon referred to as the number of finishers.
> - The 28 knots criteria is only missed by one competitor, and the competitor has a 2-run average of 27.5 knots (or higher).
> - The required number of finishers have a 2-run average of 26 knots (or higher). The requirement is total number of finishers // 2.
>
> 1.3 Wing foiling rounds will count towards the UKWA wing foiling ranking, if both of the following conditions are met:
>
> - There are at least 4 UKWA wing foilers who finish the round, from hereon referred to as the number of finishers.
> - The required number of finishers have a 2-run average of 25 knots (or higher). The requirement is total number of finishers // 4.
>
> 1.4 Wing foiling rounds will also count towards the UKWA wing foiling ranking, if all of the following conditions are met:
>
> - There are at least 4 UKWA wing foilers who finish the round, from hereon referred to as the number of finishers.
> - The 25 knots criteria is only missed by one competitor, and the competitor has a 2-run average of 24.5 knots (or higher).
> - The required number of finishers have a 2-run average of 23 knots (or higher). The requirement is total number of finishers // 2.
>
> A minimum of one completed round is needed to ratify the event.



### Illustration

Quite a lot of analysis has been completed after the meeting and prior to writing this proposal, using all possible 116 UKWA legs between 2010 and 2023. The full analysis will not be written up in detail because it would take a long time to do so clearly. This document is merely a brief summary.

The scatter plot below shows the relationship between the 2-run averages being recorded by 25-ish percent versus 50-ish percent of the fleet. The phrase "ish" has been used because the actual calculation is based on [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division), essentially rounding down / towards zero.

The scatter plot shows at a glance which UKWA legs are deemed valid since 2010, based on the old rules and newly proposed rules.

![overview](img/overview.png)

It should be apparent that the orange dots are rounds that would be deemed valid by the new rules. The cluster that has been highlighted by an ellipse is due to the newly introduced 26 knots criteria, which only kicks in when a single competitor fails to meet the 28 knots criteria and by less than 0.5 knots.

Zooming in to the most interesting area, we can see that 4 legs in 2022 and 2023 have been labelled. The cluster within the ellipse is deemed valid under the mid-fleet criteria (over 26 knots) and the other orange dots are deemed valid because of the refined upper-quartile criteria (over 28 knots).

![zoom](img/zoom.png)



Orange dots to the right of 28 knots on the x-axis are due to the use of floor division (not rounding up). The dark orange dots are rounds which only met the 28 knots / 26 knots criteria because the new proposal uses 2-run averages, rather than stipulating two runs both exceeding 28 / 26 knots.

The new rules deem an additional 12 rounds as valid since 2010, including 2 from 2022 (>28 knots, floor division) and 1 round from 2023, due to the new 26 knots criteria. The new 26 knots criteria for the middle of the fleet is only applied under the circumstances, which were described earlier.



### Summary

The new proposal is the product of a discussion between Pete Davis, Zara Davis and Michael George on 12 Sep 2024.

The proposed rules are more lengthy than previous ones, but they have been written to be consistent, unambiguous, and easy to apply. The use of [floor division](https://www.designgurus.io/answers/detail/what-is-floor-division) keeps the new rules straightforward, whether writing software or applying them manually.

The scatter plots show how 12 additional rounds would be deemed valid by the newly proposed rules, but not the old rules. 3 of those 12 rounds were during 2022 and 2023, and there was another borderline round in 2023 . That round was 11 Oct 2023 and deemed invalid by the proposed rules.

The old rules deemed 49 rounds valid between 2010 and 2023, so the additional 12 rounds represent an increase of 25%. Looking back at the two scatter plots, it can be seen that these additional 12 rounds are confined to 2 relatively distinct clusters. There is also one lonely orange dot amongst the green!

There was plenty of other analysis such as use of the the upper quartile and median, traditional rounding, rounding half to even (aka bankers rounding), and more besides! In the interests of simplicity this proposal has eventually been written to be consistent, unambiguous, and easy to apply.

This page has been written with the intention that it is concise, whilst describing the new rules and demonstrating their effect for anyone interested.
