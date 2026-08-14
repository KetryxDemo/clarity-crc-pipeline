Feature: Sample adequacy quality control

  @id:TC-PIPE-04 @tests:RQ-CRC-04
  Scenario: A specimen below the minimum DNA input is rejected before scoring
    Given a specimen whose total DNA input is below the validated minimum
    When the pipeline evaluates sample adequacy
    Then the reported result is INVALID
    And the recorded reason is insufficient DNA input
    And no classifier score is computed

  @id:TC-PIPE-05 @tests:RQ-CRC-04
  Scenario: A specimen with a failed bisulfite conversion control is rejected
    Given a specimen whose bisulfite conversion control has failed
    When the pipeline evaluates sample adequacy
    Then the reported result is INVALID
    And the recorded reason is failed conversion control

  @id:TC-PIPE-06 @tests:RQ-CRC-04
  Scenario: A specimen with an unquantifiable marker is rejected rather than scored as zero
    Given a specimen where one panel marker has a total copy count of zero
    When the pipeline evaluates sample adequacy
    Then the reported result is INVALID
    And the recorded reason is unquantifiable marker
