---
itemId: SPEC-PIPE-QC
itemType: Software Item Spec
itemTitle: Sample-adequacy QC and invalid-run handling
itemFulfills: RQ-CRC-04
itemIntroducesRisk: RSK-CRC-04
Software item type: Function
---

Gates the classifier. Evaluates every sample-adequacy criterion before scoring and rejects
any specimen that fails, so that no inadequate specimen can reach the classifier.

Rejection criteria: total DNA input below the validated minimum; failed bisulfite
conversion control; any unquantifiable marker in the panel; missing faecal haemoglobin
measurement.

QC is fail-closed. Where adequacy cannot be determined - for example a control result that
is itself missing - the specimen is rejected rather than passed. An inadequate specimen
yields INVALID with the reason recorded, and never POSITIVE or NEGATIVE.

## Item fields

### Outputs

An adequacy verdict, and for a rejected specimen the specific criterion that failed.
