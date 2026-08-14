Feature: Marker quantification and haemoglobin integration

  @id:TC-PIPE-14 @tests:RQ-CRC-01
  Scenario: Marker ratios are computed from methylated and total copy counts
    Given a specimen with methylated and total copy counts for every panel marker
    When the pipeline quantifies the marker panel
    Then each marker carries a normalised methylation ratio

  @id:TC-PIPE-15 @tests:RQ-CRC-01
  Scenario: Marker quantification is reproducible for identical input
    Given a specimen with methylated and total copy counts for every panel marker
    When the pipeline quantifies the marker panel twice
    Then both runs produce identical marker ratios

  @id:TC-PIPE-16 @tests:RQ-CRC-02
  Scenario: A missing haemoglobin measurement is not defaulted to a value
    Given a specimen with no faecal haemoglobin measurement
    When the pipeline validates the haemoglobin input
    Then the specimen is marked non-scorable
    And no haemoglobin value is substituted
