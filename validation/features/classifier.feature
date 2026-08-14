Feature: Composite scoring and threshold application

  @id:TC-PIPE-01 @tests:RQ-CRC-03
  Scenario: A score above the positivity threshold is reported POSITIVE
    Given a specimen with an adequate marker panel and haemoglobin value
    When the composite score exceeds the positivity threshold
    Then the reported result is POSITIVE

  @id:TC-PIPE-02 @tests:RQ-CRC-03
  Scenario: A score below the positivity threshold is reported NEGATIVE
    Given a specimen with an adequate marker panel and haemoglobin value
    When the composite score falls below the positivity threshold
    Then the reported result is NEGATIVE

  @id:TC-PIPE-03 @tests:RQ-CRC-03
  Scenario: A score exactly at the threshold is reported POSITIVE
    Given a specimen with an adequate marker panel and haemoglobin value
    When the composite score is exactly equal to the positivity threshold
    Then the reported result is POSITIVE
    And the threshold applied is recorded with the result
