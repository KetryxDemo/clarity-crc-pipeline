---
itemId: SPEC-PIPE-REPORT
itemType: Software Item Spec
itemTitle: Result report generation
itemFulfills: RQ-CRC-06
Software item type: Function
---

## Item fields

### Description

Renders the result report for a scored or rejected specimen.

The report carries the qualitative result, the accession identifier, the assay method and
version, the analysis date, and the limitations of the test. Limitations text is selected
by result and is not free text.

A NEGATIVE report always states that the result does not rule out colorectal cancer or
advanced adenoma and that screening should continue at the recommended interval - the
mitigation for a false negative being acted on as an all-clear. A POSITIVE report states
that diagnostic colonoscopy is indicated. An INVALID report states the reason and that a
repeat specimen is required.

### Outputs

The rendered result report for release to the ordering clinician.

