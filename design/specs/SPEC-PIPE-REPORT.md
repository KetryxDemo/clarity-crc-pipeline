---
itemId: SPEC-PIPE-REPORT
itemType: Software Item Spec
itemTitle: Result report generation
itemFulfills: RQ-CRC-06
Software item type: Function
Safety risk class: CLASS_B
Context: CLINICAL
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

### Inputs

The qualitative result, the bound accession identifier, the analysis date, and for a
rejected specimen the recorded reason.

### Outputs

The rendered result report for release to the ordering clinician.

### Rationale

Limitations text is selected by result rather than supplied as free text, so the framing of
a negative or positive result cannot drift between reports or between operators.

This module carries the only risk control that acts after release. It cannot prevent a false
negative, but the mandatory limitations statement constrains how far one propagates into
clinical decision-making (RC-3 of RSK-CRC-01), and the framing of a positive as an
indication for investigation rather than a finding of disease reduces the psychological
harm component of RSK-CRC-05.
