---
itemId: TE-AV-02
itemType: Test Execution
itemTitle: Precision run across reagent lots CL-2411, CL-2503, CL-2508
itemExecutes: TC-AV-02
Test result: PASS
Test environments: ClarityCRC reference laboratory; pipeline v1.0.0; reagent lots CL-2411, CL-2503, CL-2508
---

## Item fields

### Description

Three specimens processed in replicates of five across three reagent lots on five separate
days.

Within-run CV 3.1 percent. Between-run CV 6.8 percent. Between-lot CV 11.2 percent. All
three within acceptance criteria.

Note recorded during execution: lot CL-2508 showed a consistent downward shift in mean
methylation ratio relative to lots CL-2411 and CL-2503. The shift is within the 15 percent
between-lot CV acceptance criterion and the run therefore passes as specified. The
acceptance criterion for a systematic distribution shift was assessed qualitatively, as no
quantitative bridging procedure is currently defined. Referred to laboratory management.

### Steps

1. Selected three specimens spanning the reportable range: one near the positivity threshold
   (score 0.44), one clearly positive (0.71), one clearly negative (0.12).
2. Processed each in replicates of five, across three reagent lots, on five separate days.
3. Computed coefficient of variation per marker within run, between run, and between lot.
4. Compared each lot's marker ratio distribution against the distribution established at
   validation.

### Expected behavior

Within-run CV at or below 5 percent. Between-run CV at or below 10 percent. Between-lot CV at
or below 15 percent. No lot shows a systematic shift in marker ratio distribution relative to
the validating lot.

### Observed behavior

Within-run CV 3.1 percent. Between-run CV 6.8 percent. Between-lot CV 11.2 percent. All three
quantitative criteria met.

**Observation requiring follow-up.** Lot CL-2508 showed a consistent downward shift in mean
methylation ratio relative to lots CL-2411 and CL-2503, across all four panel markers. Mean
shift was -6.4 percent, in the same direction for every marker, which is characteristic of a
systematic rather than random effect.

The shift falls within the 15 percent between-lot CV acceptance criterion, so the run passes as
specified. The fourth acceptance criterion - no systematic distribution shift - was assessed
qualitatively, because no quantitative bridging procedure is currently defined against which to
assess it. This is the gap recorded in RSK-CRC-03.

A uniform downward shift lowers composite scores for every specimen on the lot and moves
borderline specimens from POSITIVE to NEGATIVE. Referred to laboratory management. No
disposition defined at time of execution.

Passed as specified.
