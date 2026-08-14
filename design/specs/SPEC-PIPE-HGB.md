---
itemId: SPEC-PIPE-HGB
itemType: Software Item Spec
itemTitle: Faecal haemoglobin value integration
itemFulfills: RQ-CRC-02

Software item type: Function
---

Validates the faecal haemoglobin concentration on the normalised specimen record and
presents it to the classifier as a scoring input.

A specimen with no haemoglobin measurement is marked non-scorable. This module never
substitutes a default, a zero, or a last-known value: a missing haemoglobin measurement is
missing information, and treating it as a low value would bias the composite score toward
NEGATIVE.

## Item fields

### Outputs

The validated haemoglobin concentration in nanograms per millilitre, or an explicit
non-scorable marker with the reason recorded.
