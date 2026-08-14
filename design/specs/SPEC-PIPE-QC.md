---
itemId: SPEC-PIPE-QC
itemType: Software Item Spec
itemTitle: Sample-adequacy QC and invalid-run handling
itemFulfills: RQ-CRC-04
itemIntroducesRisk: RSK-CRC-04
Software item type: Function
Safety risk class: Class C
Context: Safety
---

## Item fields

### Description

Gates the classifier. Evaluates every sample-adequacy criterion before scoring and rejects
any specimen that fails, so that no inadequate specimen can reach the classifier.

Rejection criteria: total DNA input below the validated minimum; failed bisulfite
conversion control; any unquantifiable marker in the panel; missing faecal haemoglobin
measurement.

QC is fail-closed. Where adequacy cannot be determined - for example a control result that
is itself missing - the specimen is rejected rather than passed. An inadequate specimen
yields INVALID with the reason recorded, and never POSITIVE or NEGATIVE.

### Inputs

The normalised specimen record, the quantified marker panel, and the validated haemoglobin
result. The validated minimum DNA input threshold from configuration.

### Outputs

An adequacy verdict, and for a rejected specimen the specific criterion that failed.

### Rationale

Adequacy is evaluated before scoring and gates it, rather than annotating a score after the
fact. Ordering is the control: a check that runs after scoring can be bypassed or ignored,
and turns a gate into a label.

Fail-closed behaviour covers the case that a naive implementation misses - a control result
that is missing rather than failed. Absence of evidence of adequacy is not evidence of
adequacy. Class C: this module is the only thing standing between an inadequate specimen
and a released result.
