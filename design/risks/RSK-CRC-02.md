---
itemId: RSK-CRC-02
itemType: Risk
itemTitle: Specimen mix-up causes a result to be reported against the wrong patient
itemIsRiskControlledBy: SPEC-PIPE-IDENTITY, TC-PIPE-07
---

Marker data from one specimen is combined with the haemoglobin measurement from another, or
a result is released bound to the wrong accession identifier. One patient receives another
patient's result.

A false NEGATIVE delivered this way carries the harm of RSK-CRC-01 with none of its
statistical excuse, and a false POSITIVE sends a patient to an invasive procedure they had
no indication for. Both patients are harmed by a single event.

## Item fields

### Cause

Accession identifier mismatch between the two instrument outputs; identifier truncation or
transcription error during ingestion; a run manifest containing more than one accession.

### Risk control measures

The identity chain verifies that the accession identifier on the marker data matches the
one on the haemoglobin measurement, before quantification, and rejects on mismatch without
emitting any result against either accession (SPEC-PIPE-IDENTITY). Mismatch rejection is
verified by automated test (TC-PIPE-07).
