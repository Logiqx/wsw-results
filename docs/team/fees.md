## Weymouth Speed Week

### Entry Fees 2025 - Full Week and Youths

#### Constants

```c
// ENTRYTYPE = 2 or 7 (number of days)
// YOUTH = 1 or 0.5 (depending on Adult or Youth respectively)
// MMO (MINI MOTION OWNER) = 0 or -35 (basic discount)
```

#### Base Charge

```c
// Base charge = 210 (adult week), 105 (youth week), 30 (youth weekend)

30 * [YOUTH] * [ENTRYTYPE]
```

#### Youth Admin

```c
// Youth admin = 0 or 20 (depending on Adult or Youth respectively)

[YOUTHADMIN]
```

#### Rash Vest Hire

```c
// Rash vest hire = 0 or 20

[RASHVEST]
```

#### Mini Motion Hire

```c
// Mini Motion hire @ £5 per day = 10 or 35, depending on entry type (2 or 7 days)

5 * [ENTRYTYPE]
```

#### Basic Discount

```c
// Mini Motion basic discount = 0, -10, -35
// Negates the GPS hire charge for single craft entries
// Factored by number of days for youth weekend or all week
//    MMO (MINI MOTION OWNER) = 0 or -35 (basic discount)
//    ENTRYTYPE = 2 or 7 (number of days)

[MMO] * [ENTRYTYPE] / 7
```

#### Cost of Second Craft

```c
// Cost of second craft = 0, 105 or 30
// 2ND1... 2ND5 are the sum of the selections from the 5 separate "Second Craft Type" selections
//   They are either 0 (no second) craft or 1 (second craft)
//   ENTRYTYPE = 2 or 7 (number of days)

((105 * ([2ND1] + [2ND2] + [2ND3] + [2ND4] + [2ND5])) * [ENTRYTYPE] / 7)
```

#### Additional Discount

```c
// Additional discount = 0, -20 or -70 if you have your own GPS and enter two craft types
// Note *2 (rather than *3, which might be expected) as the single craft entries is also active
//    MMO (MINI MOTION OWNER) = 0 or -35 (basic discount)

(([MMO] * 2 * ([2ND1] + [2ND2] + [2ND3] + [2ND4] + [2ND5])) * [ENTRYTYPE] / 7)
```



### Links

[Google Sheet](https://docs.google.com/spreadsheets/d/1WqjVZTevEO4C66uFIMFmPFTOVBpN8Tl4NWNc2z2oUd4/edit?gid=0#gid=0) containing thoughts and examples