Feature: Module-level verification of the pipeline design outputs

  Unit-level verification. Each scenario verifies one software item spec - a
  design output - rather than a requirement, which is what populates the
  Verification column of the traceability matrix.

  @id:TC-VER-01 @tests:SPEC-PIPE-INGEST
  Scenario: Ingestion normalises both instrument streams into one specimen record
    Given a sequencer manifest and a haemoglobin analyser file for the same accession
    When the ingestion module normalises them
    Then the specimen record carries the marker counts and the haemoglobin concentration

  @id:TC-VER-02 @tests:SPEC-PIPE-INGEST
  Scenario: Ingestion surfaces a malformed input as a structural error
    Given a sequencer manifest with no marker block
    When the ingestion module normalises them
    Then a structural error is surfaced
    And no specimen record is produced

  @id:TC-VER-03 @tests:SPEC-PIPE-MARKERS
  Scenario: Marker quantification divides methylated by total copy count
    Given a marker with 30 methylated copies and 100 total copies
    When the marker module quantifies the panel
    Then that marker carries a ratio of 0.3

  @id:TC-VER-04 @tests:SPEC-PIPE-MARKERS
  Scenario: A zero total copy count yields unquantifiable rather than a zero ratio
    Given a marker with 0 methylated copies and 0 total copies
    When the marker module quantifies the panel
    Then that marker is reported unquantifiable
    And that marker carries no ratio

  @id:TC-VER-05 @tests:SPEC-PIPE-HGB
  Scenario: Haemoglobin validation passes a reported concentration through unchanged
    Given a haemoglobin measurement of 45 nanograms per millilitre
    When the haemoglobin module validates the input
    Then the haemoglobin input is scorable
    And the validated haemoglobin value is 45

  @id:TC-VER-06 @tests:SPEC-PIPE-HGB
  Scenario: Haemoglobin validation never substitutes a default for a missing value
    Given a haemoglobin measurement that was never reported
    When the haemoglobin module validates the input
    Then the haemoglobin input is not scorable
    And no haemoglobin value is substituted by the module

  @id:TC-VER-07 @tests:SPEC-PIPE-QC
  Scenario: Adequacy evaluation is fail-closed when DNA input is not reported
    Given a specimen whose DNA input quantity is absent rather than low
    When the QC module evaluates adequacy
    Then the specimen is inadequate
    And the adequacy reason records that DNA input was not reported

  @id:TC-VER-08 @tests:SPEC-PIPE-QC
  Scenario: A missing conversion control result is treated as a failure not a pass
    Given a specimen whose conversion control result is absent
    When the QC module evaluates adequacy
    Then the specimen is inadequate
    And the adequacy reason records a failed conversion control

  @id:TC-VER-09 @tests:SPEC-PIPE-IDENTITY
  Scenario: Identity verification records both observed identifiers on mismatch
    Given marker data for one accession and haemoglobin for a different accession
    When the identity module verifies the accession chain
    Then identity verification fails
    And both observed accession identifiers are recorded for follow-up

  @id:TC-VER-10 @tests:SPEC-PIPE-CLASSIFIER
  Scenario: The composite score is a weighted sum of markers and haemoglobin
    Given a panel where every marker ratio is 0.5 and haemoglobin is 100
    When the classifier computes the composite score
    Then the score equals the weighted sum of the marker and haemoglobin contributions

  @id:TC-VER-11 @tests:SPEC-PIPE-CLASSIFIER
  Scenario: A haemoglobin value above the reportable range is not scored as in range
    Given a haemoglobin measurement above the validated reportable range
    When the classifier checks the reportable range
    Then the input is out of range
    And the offending input and direction are recorded

  @id:TC-VER-12 @tests:SPEC-PIPE-REPORT
  Scenario: Report limitations are selected by result rather than supplied as free text
    Given the report module renders a NEGATIVE report
    When the rendered report is inspected
    Then the report carries the standard negative limitations text
    And the report carries the assay method and pipeline version

  @id:TC-VER-13 @tests:SPEC-PIPE-AUDIT
  Scenario: The audit entry captures every attributable field required for release
    Given a scored specimen and an available audit store
    When the audit module records the release
    Then the audit entry captures accession, result, score, threshold, version and operator

  @id:TC-VER-14 @tests:SPEC-PIPE-AUDIT
  Scenario: Release is withheld when the audit write fails
    Given a scored specimen and an unavailable audit store
    When the audit module records the release
    Then the release is withheld
    And the withholding reason records that the audit entry could not be written
