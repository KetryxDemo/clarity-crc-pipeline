Feature: Result report generation

  @id:TC-PIPE-09 @tests:RQ-CRC-06
  Scenario: A negative report states the limitations of a negative result
    Given a specimen reported NEGATIVE
    When the result report is generated
    Then the report states that a negative result does not rule out colorectal cancer
    And the report states that screening should continue at the recommended interval

  @id:TC-PIPE-10 @tests:RQ-CRC-06
  Scenario: A positive report indicates diagnostic colonoscopy
    Given a specimen reported POSITIVE
    When the result report is generated
    Then the report states that diagnostic colonoscopy is indicated

  @id:TC-PIPE-11 @tests:RQ-CRC-06
  Scenario: An invalid report states the reason and requests a repeat specimen
    Given a specimen reported INVALID for insufficient DNA input
    When the result report is generated
    Then the report states the reason for the invalid result
    And the report states that a repeat specimen is required
