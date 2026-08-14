---
itemId: RQ-CRC-05
itemType: Requirement
itemTitle: Bind every result to its specimen accession identity end to end
itemHasParent: RQ-CRC-00
Requirement type: Functional
---

The pipeline shall carry the specimen accession identifier from instrument output through
to the released result, and shall verify that the accession identifier associated with the
marker data matches the accession identifier associated with the haemoglobin measurement.

Where the two do not match, the pipeline shall reject the specimen and shall not emit a
result of any kind, including INVALID against either accession.

No result shall be released that is not bound to exactly one accession identifier.
