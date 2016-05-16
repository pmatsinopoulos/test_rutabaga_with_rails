Feature: Returns the list of products

  Scenario: Getting the list of products
    Given The following list of products:
      | name      |
      | product 1 |
      | product 2 |
    When I request the list of products
    Then I get the list of products:
      | name      |
      | product 2 |
      | product 1 |

