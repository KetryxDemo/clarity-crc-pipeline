---
itemId: RQ-CRC-06
itemType: Requirement
itemTitle: Generate a result report containing result, method, and limitations
itemHasParent: RQ-CRC-00
Requirement type: Functional
Context: Clinical
Relevant standards: 42 CFR 493.1291; CLIA result reporting
---

## Item fields

### Description

The pipeline shall generate, for each scored specimen, a result report containing the
qualitative result, the specimen accession identifier, the assay method and version, the
date of analysis, and the stated limitations of the test.

The report for a POSITIVE result shall state that diagnostic colonoscopy is indicated. The
report for a NEGATIVE result shall state that a negative result does not rule out
colorectal cancer or advanced adenoma and that screening should continue at the
recommended interval.

The report for an INVALID result shall state the reason and that a repeat specimen is
required.

### Rationale

The report is the only part of the system a clinician actually sees, and the limitations
statement is the sole risk control that operates after release.

A negative screening result is the most misinterpretable output the assay produces: it is
routinely read as an all-clear when it means only that no signal was detected at this
screening. Mandating that statement on every negative report is what stops a true negative
and a false negative from being acted on identically.
