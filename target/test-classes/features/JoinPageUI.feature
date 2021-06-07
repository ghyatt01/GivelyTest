Feature:Test the Join Page Functionality with Donor Account
  In Order to verify a Donor can use the Join Page
  As I Gively Donor
  I would like to perform all functionality on the Join Page as expected.


@test
  Scenario: Valid User can Log in
    Given I navigate to Join Page For Gively
    When I enter the correct credentials for a Gively Donor
    Then I will see that the Gively Donor has logged in successfully

@test
  Scenario Outline: Invalid User Login
  Given I navigate to Join Page For Gively
  When I enter the incorrect "<type>" credentials for a Gively Donor
  Then I will see that the Gively Donor Sign In has Thrown the Correct Error Message

  Examples:
  |type    |
  |email   |
  |password|

@test
 Scenario: Validate Forgotten Password Modal is Shown
   Given I navigate to Join Page For Gively
   When I select the forgot password modal
   Then I will see the forgot password modal

@test
 Scenario Outline: Validate Forgotten Password Functionality
   Given I navigate to Join Page For Gively
   And I select the forgot password modal
   When I enter a "<type>" email to forgot password modal
  Then I will see the correct behavior for a "<type>" email submission

  Examples:
  |type|
  |valid|
  |invalid|

