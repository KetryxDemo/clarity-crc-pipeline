---
itemId: SPEC-PIPE-HGB
itemType: Software Item Spec
itemTitle: Faecal haemoglobin value integration
itemFulfills: RQ-CRC-02

Software item type: Function
Safety risk class: CLASS_C
Context: CLINICAL
---

## Item fields

### Description

Validates the faecal haemoglobin concentration on the normalised specimen record and
presents it to the classifier as a scoring input.

A specimen with no haemoglobin measurement is marked non-scorable. This module never
substitutes a default, a zero, or a last-known value: a missing haemoglobin measurement is
missing information, and treating it as a low value would bias the composite score toward
NEGATIVE.

### Inputs

The normalised specimen record: faecal haemoglobin concentration in nanograms per
millilitre, where reported.

### Outputs

The validated haemoglobin concentration in nanograms per millilitre, or an explicit
non-scorable marker with the reason recorded.

### Rationale

Substituting a default for a missing haemoglobin measurement would be the single easiest
way to introduce a systematic false negative. A default of zero reads as no bleeding, which
lowers the composite score for every specimen with a missing measurement. Absence of a
measurement is absence of information and is handled as such.
