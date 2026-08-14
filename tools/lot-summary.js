// Laboratory convenience script - NOT a configuration item.
// Summarises marker ratio distributions for a reagent lot from a run export.
// Lives outside the Ketryx glob on purpose: if this file ever produces an item,
// the glob scoping is wrong.

export function summariseLot(runs) {
  const byMarker = {};
  for (const run of runs) {
    for (const [marker, ratio] of Object.entries(run.ratios ?? {})) {
      (byMarker[marker] ??= []).push(ratio);
    }
  }
  return Object.fromEntries(
    Object.entries(byMarker).map(([marker, values]) => {
      const mean = values.reduce((a, b) => a + b, 0) / values.length;
      return [marker, { n: values.length, mean }];
    })
  );
}
