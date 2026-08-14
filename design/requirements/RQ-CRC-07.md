---
itemId: RQ-CRC-07
itemType: Requirement
itemTitle: Enforce the validated reportable range and flag out-of-range inputs
itemHasParent: RQ-CRC-00
Requirement type: Functional
---

## Item fields

### Description

The pipeline shall enforce the reportable range established during analytical validation
for each quantitative input.

An input falling outside its validated reportable range shall not be scored as though it
were within range. The pipeline shall flag the out-of-range condition, record which input
was out of range and in which direction, and route the specimen for INVALID handling.

The reportable range in force shall be a configured, version-controlled value recorded
alongside each result.

### Rationale

Reportable range is one of the analytical validity characteristics a CLIA laboratory must
establish before releasing patient results. Enforcing it in software is what converts that
determination from a document into a runtime property.

An out-of-range input is not a slightly worse in-range input: it lies outside the region
where the assay's behaviour was characterised at all, so extrapolating a score across that
boundary asserts performance that was never measured.
