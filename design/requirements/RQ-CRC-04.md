---
itemId: RQ-CRC-04
itemType: Requirement
itemTitle: Detect and reject specimens failing sample-adequacy QC before scoring
itemHasParent: RQ-CRC-00
Requirement type: Functional
---

The pipeline shall evaluate sample adequacy before computing a classifier score, and shall
reject any specimen that fails.

A specimen shall be rejected where total DNA input falls below the validated minimum, where
the bisulfite conversion control fails, where any panel marker is unquantifiable, or where
the faecal haemoglobin measurement is missing.

A rejected specimen shall be reported INVALID with the reason for rejection recorded. The
pipeline shall not emit POSITIVE or NEGATIVE for a specimen that has failed QC under any
circumstances.
