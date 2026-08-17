// Release gateway.
//
// Unlike the modules in src/pipeline.js, these functions carry their own
// Ketryx metadata in the docblock: each one IS a configuration item, read
// directly out of this source file. The spec and the implementation are the
// same artifact, so they cannot drift apart.

export type Accession = string;

export interface ScoredSpecimen {
  accession: Accession;
  result: 'POSITIVE' | 'NEGATIVE' | 'INVALID';
  score: number | null;
  thresholdApplied: number | null;
  auditWritten: boolean;
}

export interface ReleaseDecision {
  releasable: boolean;
  reason?: string;
}

/**
 * Normalises a specimen accession identifier to its canonical form before it
 * is bound to a result.
 *
 * Trims surrounding whitespace, upper-cases, and rejects anything that is not
 * the validated accession shape. Rejection is explicit rather than coerced: a
 * silently "repaired" identifier is how one patient's result reaches another
 * patient's record.
 *
 * @itemId:fn-normalise-accession
 * @itemType:Software Item Spec
 * @itemTitle:"Canonical accession identifier normalisation"
 * @itemFulfills:RQ-CRC-05
 */
export function normaliseAccession(raw: string): Accession | null {
  if (typeof raw !== 'string') return null;
  const trimmed = raw.trim().toUpperCase();
  // ACC- followed by four or more digits. Anything else is not an accession.
  return /^ACC-\d{4,}$/.test(trimmed) ? trimmed : null;
}

/**
 * Final gate before a result leaves the laboratory.
 *
 * Release requires all three of: a canonical accession, a qualitative result
 * that is not INVALID, and a persisted audit entry. The audit condition is
 * checked here as well as at the point of writing, because a released result
 * with no attributable record is the one failure that cannot be corrected
 * after the fact.
 *
 * @itemId:fn-assert-releasable
 * @itemType:Software Item Spec
 * @itemTitle:"Pre-release gate for a scored specimen"
 * @itemFulfills:RQ-CRC-08
 */
export function assertReleasable(specimen: ScoredSpecimen): ReleaseDecision {
  if (normaliseAccession(specimen.accession) === null) {
    return { releasable: false, reason: 'accession identifier is not canonical' };
  }
  if (specimen.result === 'INVALID') {
    return { releasable: false, reason: 'specimen was reported INVALID' };
  }
  if (!specimen.auditWritten) {
    return { releasable: false, reason: 'audit entry has not been written' };
  }
  return { releasable: true };
}

/**
 * Strips identifiers from a result report before it is exported outside the
 * laboratory information system.
 *
 * The accession is retained because it is the laboratory's own identifier and
 * the report is meaningless without it; the ordering clinician, patient name
 * and date of birth are removed. Redaction is allow-list based - fields are
 * kept only if named - so a new field added upstream is excluded by default
 * rather than leaking.
 *
 * @itemId:fn-redact-for-export
 * @itemType:Software Item Spec
 * @itemTitle:"Allow-list redaction of a result report for export"
 * @itemFulfills:RQ-CRC-06
 */
export function redactForExport(
  report: Record<string, unknown>
): Record<string, unknown> {
  const allowed = [
    'accession',
    'result',
    'method',
    'pipelineVersion',
    'analysedOn',
    'statements',
  ];
  const out: Record<string, unknown> = {};
  for (const key of allowed) {
    if (key in report) out[key] = report[key];
  }
  return out;
}
