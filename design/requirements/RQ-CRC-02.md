---
itemId: RQ-CRC-02
itemType: Requirement
itemTitle: Incorporate the faecal haemoglobin value into the composite score
itemHasParent: RQ-CRC-00
Requirement type: Functional
Context: CLINICAL
Relevant standards: 42 CFR 493.1253
---

## Item fields

### Description

The pipeline shall accept the faecal haemoglobin concentration reported by the
immunochemical assay, in nanograms per millilitre, and include it as an input to the
composite classifier score.

Where the haemoglobin measurement is absent or was not reported for the specimen, the
pipeline shall not substitute a default value. The specimen shall be treated as
non-scorable and handled under RQ-CRC-04.

### Rationale

The haemoglobin channel detects bleeding lesions that the methylation panel can miss, so
the two inputs are complementary rather than redundant. Explicitly prohibiting a default
value closes the most direct route to a systematic false negative: a substituted zero reads
as no bleeding and lowers the score for every affected specimen.
