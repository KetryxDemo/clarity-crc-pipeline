---
itemId: TC-AV-02
itemType: Test Case
itemTitle: Precision and repeatability across three reagent lots
itemTests: RQ-CRC-01
---

## Item fields

### Description

Establishes within-run, between-run, and between-lot precision of marker quantification.

Between-lot precision is the arm that matters most: it is the only routine measurement that
would surface the reagent-lot drift described in RSK-CRC-03, and it is currently the closest
thing to a detection mechanism for that risk.

### Steps

1. Select three specimens spanning the reportable range: one near the positivity threshold,
   one clearly positive, one clearly negative.
2. Process each in replicates of five, across three reagent lots, on five separate days.
3. Compute coefficient of variation for each marker within run, between run, and between
   lot.
4. Compare the marker ratio distribution of each lot against the distribution established
   at validation.

### Acceptance criteria

Within-run CV at or below 5 percent. Between-run CV at or below 10 percent. Between-lot CV
at or below 15 percent. No lot shows a systematic shift in the marker ratio distribution
relative to the validating lot.
