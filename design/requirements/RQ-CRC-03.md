---
itemId: RQ-CRC-03
itemType: Requirement
itemTitle: Compute the classifier score and apply the validated positivity threshold
itemHasParent: RQ-CRC-00
Requirement type: Functional
Context: Clinical
Relevant standards: 42 CFR 493.1253; CLSI EP12
---

## Item fields

### Description

The pipeline shall compute a composite classifier score from the quantified marker panel
and the faecal haemoglobin value, and shall compare that score against the positivity
threshold established during analytical validation.

A specimen whose score is greater than or equal to the threshold shall be reported
POSITIVE. A specimen whose score is below the threshold shall be reported NEGATIVE.

The threshold in force shall be a configured, version-controlled value. The pipeline shall
record the threshold value applied alongside each result, so that any released result can
be reproduced from its inputs.

### Rationale

Recording the threshold and coefficient set applied against each result is what makes a
released result reproducible from its inputs, which Part 11 requires and which any
post-hoc investigation of a suspected false negative depends on.

Inclusive comparison at the boundary favours sensitivity, consistent with the screening
intent in RQ-CRC-00 and with the benefit-risk reasoning recorded in RSK-CRC-05.
