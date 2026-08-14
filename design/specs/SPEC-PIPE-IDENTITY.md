---
itemId: SPEC-PIPE-IDENTITY
itemType: Software Item Spec
itemTitle: Accession identity chain and mismatch rejection
itemFulfills: RQ-CRC-05
itemIntroducesRisk: RSK-CRC-02
Software item type: Function
Safety risk class: Class C
Context: Safety
---

## Item fields

### Description

Verifies that the accession identifier carried by the marker data matches the accession
identifier carried by the haemoglobin measurement, and binds the verified identifier to the
specimen record for the remainder of the run.

On mismatch the specimen is rejected outright and no result is emitted against either
accession - not even INVALID. Emitting INVALID against one of two mismatched accessions
would assert a binding that has not been established, and the correct binding is unknown at
that point.

Identity verification runs before quantification, so a mismatched specimen consumes no
downstream processing and cannot reach the classifier by any path.

### Inputs

The normalised specimen record, carrying the accession identifier from the sequencer
manifest and the accession identifier from the haemoglobin analyser output.

### Outputs

The verified accession identifier bound to the specimen record, or a rejection with both
observed identifiers recorded for laboratory follow-up.

### Rationale

Emitting nothing on mismatch, rather than INVALID against one accession, is the design
decision most likely to be questioned, so it is recorded explicitly. At the point a mismatch
is detected the correct binding is unknown; attaching any outcome to either accession would
assert a binding that has not been established. Both observed identifiers are recorded so
the event is investigable by the laboratory.

Verification runs before quantification so a mismatched specimen cannot reach the classifier
by any path. Class C: a defect here harms two patients from one event (RSK-CRC-02).
