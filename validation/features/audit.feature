Feature: Part 11 audit trail for result release

  @id:TC-PIPE-12 @tests:RQ-CRC-08
  Scenario: A released result is accompanied by an attributable audit entry
    Given a specimen that has been scored
    When the pipeline releases the result
    Then an audit entry records the accession identifier and the released result
    And the audit entry records the classifier score and the threshold applied
    And the audit entry records the pipeline version and the initiating operator

  @id:TC-PIPE-13 @tests:RQ-CRC-08
  Scenario: A result is withheld when the audit entry cannot be written
    Given a specimen that has been scored
    And the audit store is unavailable
    When the pipeline attempts to release the result
    Then the result is withheld
