Feature: Specimen accession identity chain

  @id:TC-PIPE-07 @tests:RQ-CRC-05
  Scenario: Mismatched accession identifiers are rejected with no result emitted
    Given marker data for accession A and a haemoglobin measurement for accession B
    When the pipeline verifies the accession identity chain
    Then the specimen is rejected
    And no result is emitted against accession A
    And no result is emitted against accession B

  @id:TC-PIPE-08 @tests:RQ-CRC-05
  Scenario: A verified accession identifier is bound to the released result
    Given marker data and a haemoglobin measurement for the same accession
    When the pipeline releases a result
    Then the result carries exactly one accession identifier
