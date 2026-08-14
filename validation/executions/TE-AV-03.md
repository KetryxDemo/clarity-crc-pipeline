---
itemId: TE-AV-03
itemType: Test Execution
itemTitle: Limit of detection dilution series, twenty replicates per level
itemExecutes: TC-AV-03
---

## Item fields

### Description

Dilution series across six DNA input levels, twenty replicates per level.

Limit of detection established at 18 nanograms total DNA input, at which 95 percent of
replicates (19 of 20) were correctly reported POSITIVE.

The minimum DNA input threshold enforced by SPEC-PIPE-QC is 25 nanograms, above the
established limit of detection. Acceptance criteria met. Accepted.

### Steps

1. Prepared a dilution series of a characterised positive specimen across six DNA input
   levels: 5, 10, 15, 18, 25, and 40 nanograms.
2. Processed twenty replicates at each input level.
3. Determined the lowest input at which at least 95 percent of replicates were correctly
   reported POSITIVE.
4. Compared that input against the minimum DNA input threshold enforced by SPEC-PIPE-QC.

### Expected behavior

Limit of detection established with at least 95 percent detection. The QC minimum DNA input
threshold is at or above the established limit of detection.

### Observed behavior

Detection by input level: 5 ng - 8 of 20 (40 percent); 10 ng - 13 of 20 (65 percent);
15 ng - 17 of 20 (85 percent); 18 ng - 19 of 20 (95 percent); 25 ng - 20 of 20 (100 percent);
40 ng - 20 of 20 (100 percent).

Limit of detection established at 18 nanograms total DNA input.

The minimum DNA input threshold enforced by SPEC-PIPE-QC is 25 nanograms, which sits above the
established limit of detection with a margin, and at which detection was 100 percent in this
series. The gate is therefore empirically grounded rather than chosen by judgement, supporting
RC-4 of RSK-CRC-04.

Accepted.
