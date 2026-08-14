---
itemId: RQ-CRC-01
itemType: Requirement
itemTitle: Quantify each methylated DNA marker in the panel
itemHasParent: RQ-CRC-00
Requirement type: Functional
Context: Clinical
Relevant standards: CLSI MM01; 42 CFR 493.1253
---

## Item fields

### Description

The pipeline shall compute, for each methylated DNA marker in the ClarityCRC panel, a
normalised methylation ratio derived from methylated and total copy counts reported by the
sequencing instrument.

Marker quantification shall be reproducible: re-processing the same instrument output shall
yield identical marker values.

A specimen for which any marker in the panel cannot be quantified shall not proceed to
scoring, and shall be handled under the sample-adequacy rules in RQ-CRC-04.

### Rationale

Marker quantification is the foundation of the composite score, so reproducibility is a
correctness property rather than a convenience. Re-processing the same instrument output
must yield identical values, otherwise a released result cannot be reconstructed from its
inputs and the Part 11 record is not defensible.

Routing an unquantifiable marker to the adequacy rules rather than scoring it is what
prevents a degraded specimen from being scored as a confidently negative one.
