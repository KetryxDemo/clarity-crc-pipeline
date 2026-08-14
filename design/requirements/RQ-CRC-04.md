---
itemId: RQ-CRC-04
itemType: Requirement
itemTitle: Detect and reject specimens failing sample-adequacy QC before scoring
itemHasParent: RQ-CRC-00
Requirement type: Functional
Context: SAFETY
Relevant standards: 42 CFR 493.1253; ISO 14971
---

## Item fields

### Description

The pipeline shall evaluate sample adequacy before computing a classifier score, and shall
reject any specimen that fails.

A specimen shall be rejected where total DNA input falls below the validated minimum, where
the bisulfite conversion control fails, where any panel marker is unquantifiable, or where
the faecal haemoglobin measurement is missing.

A rejected specimen shall be reported INVALID with the reason for rejection recorded. The
pipeline shall not emit POSITIVE or NEGATIVE for a specimen that has failed QC under any
circumstances.

### Rationale

Stool is self-collected, unrefrigerated, and posted, so inadequate specimens are routine
rather than exceptional. Adequacy must therefore be a gate rather than an advisory flag.

The requirement is written as a prohibition - never POSITIVE or NEGATIVE for a failed
specimen - because an INVALID result is a recoverable inconvenience that triggers a repeat,
while a wrong result from an inadequate specimen is never revisited by the workflow.
