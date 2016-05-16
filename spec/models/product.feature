Feature: Product Model Properties

  Scenario: It should have a name
    Given A Product
    When It does not have a name
    Then Product is not valid due to name missing
