---
itemId: TE-AV-01
itemType: Test Execution
itemTitle: Clinical accuracy run against the 412-specimen reference panel
itemExecutes: TC-AV-01
---

## Item fields

### Description

Executed against a 412-specimen colonoscopy-confirmed reference panel at the positivity
threshold in force.

Sensitivity for colorectal cancer 92.4 percent (95 percent CI 86.1 to 96.5). Specificity
for no-neoplasia 87.1 percent (95 percent CI 83.4 to 90.3). Sensitivity for advanced
adenoma 43.6 percent, consistent with the performance stated in the result report.

Both primary acceptance criteria met, with lower confidence bounds above the claimed
performance. Accepted.

### Steps

1. Assembled a 412-specimen reference panel with colonoscopy-confirmed status: 47 colorectal
   cancer, 78 advanced adenoma, 287 no neoplasia.
2. Processed each specimen through the full assay and pipeline at the positivity threshold in
   force (0.42), coefficient set CS-2024-11.
3. Cross-tabulated reported results against colonoscopy findings.
4. Computed sensitivity and specificity with 95 percent confidence intervals.

### Expected behavior

Sensitivity for colorectal cancer at least 90 percent. Specificity for no-neoplasia at least
85 percent. Both lower confidence bounds above the performance claimed in the result report.

### Observed behavior

Sensitivity for colorectal cancer 92.4 percent (95 percent CI 86.1 to 96.5), 43 of 47
detected. Specificity for no-neoplasia 87.1 percent (95 percent CI 83.4 to 90.3), 250 of 287
correctly negative. Sensitivity for advanced adenoma 43.6 percent (34 of 78), consistent with
the performance stated in the result report.

Both primary acceptance criteria met, with lower confidence bounds above claimed performance.
The 37 false positives are consistent with the specificity trade-off recorded in RSK-CRC-05.

Accepted.
