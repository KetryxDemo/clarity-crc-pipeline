---
itemId: RSK-CRC-01
itemType: Risk
itemTitle: False negative result leads to missed or delayed cancer diagnosis
itemIsRiskControlledBy: SPEC-PIPE-QC, SPEC-PIPE-REPORT, TC-AV-01
---

A specimen from a patient with colorectal cancer scores below the positivity threshold and
is reported NEGATIVE. The patient and the ordering clinician treat the result as an
all-clear, no diagnostic colonoscopy is performed, and diagnosis is delayed until the
disease presents symptomatically at a later stage.

This is the most consequential failure mode of a screening assay. The harm is not caused by
the software producing a wrong number; it is caused by a plausible-looking result being
acted on as reassurance.

## Item fields

### Cause

Degraded or low-input specimen scored as adequate; marker quantification failing silently
and being scored as absence of methylation; classifier coefficients or threshold not
matching the validated set.

### Risk control measures

Sample-adequacy QC rejects inadequate specimens before scoring rather than scoring them
weakly (SPEC-PIPE-QC). Unquantifiable markers are reported as unquantifiable rather than as
a zero ratio (SPEC-PIPE-MARKERS). Every NEGATIVE report states that the result does not
rule out colorectal cancer or advanced adenoma and that screening must continue at the
recommended interval (SPEC-PIPE-REPORT). Clinical sensitivity is established against a
colonoscopy-confirmed reference panel during analytical validation (TC-AV-01).
