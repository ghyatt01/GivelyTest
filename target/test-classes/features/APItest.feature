Feature:API Test For A Star is Born
  In Order to verify an API call for A Star is Born
  As an API manaul tester
  I would like to perform CRUD commands on an endpoint

@test
  Scenario: Validate A Star is Born Endpoint
    Given I perform a GET command for a Star is Born
    Then I will see the correct status
    And I will see the correct data in the response

