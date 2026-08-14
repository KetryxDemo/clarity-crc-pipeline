---
itemId: RQ-CRC-02
itemType: Requirement
itemTitle: Incorporate the faecal haemoglobin value into the composite score
itemHasParent: RQ-CRC-00
Requirement type: Functional
---

The pipeline shall accept the faecal haemoglobin concentration reported by the
immunochemical assay, in nanograms per millilitre, and include it as an input to the
composite classifier score.

Where the haemoglobin measurement is absent or was not reported for the specimen, the
pipeline shall not substitute a default value. The specimen shall be treated as
non-scorable and handled under RQ-CRC-04.
