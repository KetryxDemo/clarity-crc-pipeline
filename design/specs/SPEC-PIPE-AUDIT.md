---
itemId: SPEC-PIPE-AUDIT
itemType: Software Item Spec
itemTitle: Part 11 audit trail for result release
itemFulfills: RQ-CRC-08

Software item type: Function
---

## Item fields

### Description

Writes the computer-generated, time-stamped audit entry that accompanies each released
result, and gates release on that write succeeding.

Each entry records the accession identifier, the released result, the classifier score, the
threshold applied, the pipeline version, and the identity of the operator or service account
that initiated the run. Entries are append-only: the pipeline exposes no path to modify or
delete one.

The write is a precondition of release, not a consequence of it. Where the audit entry
cannot be written, the result is withheld - a released result with no audit record would be
an unattributable electronic record.

### Outputs

A persisted audit entry, and a release decision that is contingent on it.

