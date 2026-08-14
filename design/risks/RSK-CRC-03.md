---
itemId: RSK-CRC-03
itemType: Risk
itemTitle: Reagent lot change shifts the classifier threshold and reduces sensitivity
---

A new reagent lot shifts the measured methylation ratios relative to the lot used to
establish the positivity threshold. The threshold in force is no longer the correct
decision boundary for the assay as it now performs. Sensitivity falls, and specimens that
would have been POSITIVE under the validating lot are reported NEGATIVE.

The failure is silent. Every individual result is internally consistent, the pipeline
reports no error, and the audit trail records a correctly applied threshold. Nothing in the
software surfaces the drift, because from the software's point of view nothing has gone
wrong.

## Item fields

### Cause

Lot-to-lot variation in bisulfite conversion efficiency or probe binding, shifting the
distribution of marker ratios without triggering any per-specimen adequacy criterion.

### Risk control measures

None currently defined.

Detection requires comparing the marker ratio distribution of a new lot against the
distribution established at validation, across a bridging panel - a lot-acceptance activity
that sits outside the pipeline and is not currently specified, scheduled, or traced to any
requirement.
