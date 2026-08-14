---
itemId: RSK-CRC-04
itemType: Risk
itemTitle: Degraded or low-input specimen scored as valid and an unreliable result released
itemIsRiskControlledBy: SPEC-PIPE-QC, TC-PIPE-04, TC-PIPE-05
---

A specimen with insufficient DNA input, or one whose bisulfite conversion control failed, is
passed through sample-adequacy QC and scored. The resulting classifier score is not
supported by the underlying measurement, and a POSITIVE or NEGATIVE result is released on
the strength of it.

## Item fields

### Cause

Adequacy thresholds set below the validated minimum; a control result that is missing rather
than failed being treated as a pass; adequacy evaluated after scoring rather than before.

### Risk control measures

QC is evaluated before the classifier and gates it, so no inadequate specimen can reach
scoring by any path (SPEC-PIPE-QC). QC is fail-closed: where adequacy cannot be determined,
the specimen is rejected rather than passed. Low DNA input rejection and conversion control
failure rejection are each verified by automated test (TC-PIPE-04, TC-PIPE-05).
