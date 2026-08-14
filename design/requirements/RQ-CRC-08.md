---
itemId: RQ-CRC-08
itemType: Requirement
itemTitle: Record an attributable, time-stamped audit trail for each result release
itemHasParent: RQ-CRC-00
Requirement type: Functional
---

The pipeline shall record, for each result it releases, a computer-generated,
time-stamped audit trail entry that is attributable to the analysis run that produced it.

The entry shall capture the accession identifier, the result released, the classifier
score, the threshold applied, the pipeline version, and the identity of the operator or
service account that initiated the run.

Audit trail entries shall be retained for the period required for the record, and shall not
be modifiable or deletable through the pipeline. Recording the audit entry shall be a
precondition of release: where the entry cannot be written, the result shall not be
released.
