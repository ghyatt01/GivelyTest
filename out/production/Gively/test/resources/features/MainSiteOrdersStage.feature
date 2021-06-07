Feature:Create Test Orders Of All Product Types From Main Website
  In Order to verify Order Submission
  As I customer of AlgaeCal
  I would like to verify an order can be created

  @smoke @StageTestOrder @PercyStage @adhoc
  Scenario Outline: 01 - Order AlgaeCal Products From Main Stage Website With Canada Address
    Given I navigate to Stage.Algaecal.com
    And I navigate to the products page in stage
    And I select the "<product>" product in stage
    And I select the "smallest" supply amount for the "<product>"
    And I verify the cart is accurate for "<product>" for "smallest" amount in "US"
    When I complete "canada" location checkout and place my order in stage environment with a test credit card ending in "5556"
    Then I should see the order confirmation page in stage for "<product>" at "smallest" supply amount for mainsite
    And I should see the IDK ID returned after the order is submitted for "<product>" in stage
    And I should see correct e-commerce datalayer tracking information for "<product>" on confirmation page
    And I do not select an upsell for "<product>"
    And I should see the order reflected in BigCommerce


  Examples:
    |product                       |
    |Bone Builder Pack             |
    |AlgaeCal Plus                |
    |Strontium Boost              |
    |AlgaeCal Basic               |
    |Triple Power Omega 3 Fish Oil|
    |Omega 3 Blood Test Kit       |

 @smoke @StageTestOrder
  Scenario Outline: 02 - Order AlgaeCal Products From Main Stage Website With USA Address
    Given I navigate to Stage.Algaecal.com
    And I navigate to the products page in stage
    And I select the "<product>" product in stage
    And I select the "smallest" supply amount for the "<product>"
    And I verify the cart is accurate for "<product>" for "smallest" amount in "US"
    When I complete "usa" location checkout and place my order in stage environment with a test credit card ending in "5556"
    Then I should see the order confirmation page in stage for "<product>" at "smallest" supply amount for mainsite
    And I should see the IDK ID returned after the order is submitted for "<product>" in stage
    And I should see correct e-commerce datalayer tracking information for "<product>" on confirmation page
    And I do not select an upsell for "<product>"
    And I should see the order reflected in BigCommerce

    Examples:
      |product                       |
      |Bone Builder Pack             |
      |AlgaeCal Plus                |
      |Strontium Boost              |
      |AlgaeCal Basic               |
      |Triple Power Omega 3 Fish Oil|
      |Omega 3 Blood Test Kit       |
  @wip
   Scenario: Order AlgaeCal Product with UK address and Verify Checkout Page and Thank You Page for VAT
     Given I navigate to Stage.Algaecal.com
     And I navigate to the products page in stage
     And I select the "Bone Builder Pack" product in stage
     And I select the "smallest" supply amount for the "Bone Builder Pack"
     And I verify the cart is accurate for "Bone Builder Pack" for "smallest" amount in "US"
     When I complete "UK" location checkout and place my order in stage environment with a test credit card ending in "5556"
     Then I should see the order confirmation page in stage for "Bone Builder Pack" at "smallest" supply amount for mainsite
     And I should see the IDK ID returned after the order is submitted for "Bone Builder Pack" in stage
     And I should see correct e-commerce datalayer tracking information for "Bone Builder Pack" on confirmation page
     And I do not select an upsell for "Bone Builder Pack"
     And I should see the order reflected in BigCommerce
     And I should see the VAT information on the Thank You page for "Bone Builder Pack" for "smallest" amount in "US" in Stage

   Scenario: Order AlgaeCal Product with UK address and verify Thank You Page

@data
  Scenario: Order AlgaeCal Product With USA Address - Billing & Shipping Address Different
    Given I navigate to Stage.Algaecal.com
    And I navigate to the products page in stage
    And I select the "Bone Builder Pack" product in stage
    And I select the "smallest" supply amount for the "Bone Builder Pack"
    And I verify the cart is accurate for "Bone Builder Pack" for "smallest" amount in "US"
    When I complete "usa" location checkout and place my order in stage environment with a test credit card ending in "5556"
    Then I should see the order confirmation page in stage for "Bone Builder Pack" at "smallest" supply amount for mainsite
    And I should see the IDK ID returned after the order is submitted for "Bone Builder Pack" in stage
    And I should see correct e-commerce datalayer tracking information for "Bone Builder Pack" on confirmation page
    And I do not select an upsell for "Bone Builder Pack"
    And I should see the order reflected in BigCommerce

  Scenario: Order AlgaeCal Product With Canada Address - Billing & Shipping Address Different
    Given I navigate to Stage.Algaecal.com
    And I navigate to the products page in stage
    And I select the "Bone Builder Pack" product in stage
    And I select the "smallest" supply amount for the "Bone Builder Pack"
    And I verify the cart is accurate for "Bone Builder Pack" for "smallest" amount in "US"
    When I complete "canada_differentBilling" location checkout and place my order in stage environment with a test credit card ending in "5556"
    Then I should see the order confirmation page in stage for "Bone Builder Pack" at "smallest" supply amount for mainsite
    And I should see the IDK ID returned after the order is submitted for "Bone Builder Pack" in stage
    And I should see correct e-commerce datalayer tracking information for "Bone Builder Pack" on confirmation page
    And I do not select an upsell for "Bone Builder Pack"
    And I should see the order reflected in BigCommerce

#  Scenario Outline: 03 - Order AlgaeCal Products From Main Stage Website With International Address
#    Given I navigate to Stage.Algaecal.com
#    And I set the browser geolocation to an international location
#    And I navigate to the products page
#    And I select the "smallest" supply amount for the "<product>"
#    And I select the supply amount for the "<product>"
#    And I verify the cart is accurate for "<product>"
#    When I complete canada checkout and place my order in stage environment
#    Then I should see the order confirmation page in stage for "<product>" at "smallest" supply amount for mainsite
#    And I should see the IDK ID returned after the order is submitted for "<product>" in stage
#    And I should see correct e-commerce datalayer tracking information for "<product>" on confirmation page
#    And I do not select an upsell for "<product>"
#    And I should see the order reflected in BigCommerce
#
#    Examples:
#      |product                       |
#   #   |Bone Builder Pack             |
#   #   |AlgaeCal Plus                |
#   #   |Strontium Boost              |
#   #   |AlgaeCal Basic               |
#   #   |Triple Power Omega 3 Fish Oil|
#   #   |Omega 3 Blood Test Kit       |
#
#
#  Scenario Outline: 04 - Order AlgaeCal Products From Main Stage Website With Canada Address with Sezzle
#    Given I navigate to Stage.Algaecal.com
#    And I navigate to the products page
#    And I select the "<product>" product
#    And I select the "smallest" supply amount for the "<product>"
#    And I verify the cart is accurate for "<product>"
#    When I complete canada checkout and place my order in stage environment with sezzle
#    Then I should see the order confirmation page in stage for "<product>" at "smallest" supply amount for mainsite
#    And I do not select an upsell for "<product>"
#    And I should see the order reflected in BigCommerce
#
#    Examples:
#      |product                       |
#  #    |Bone Builder Pack             |
#  #  |AlgaeCal Plus                |
#  #  |Strontium Boost              |
#  #  |AlgaeCal Basic               |
#  #  |Triple Power Omega 3 Fish Oil|
  #  |Omega 3 Blood Test Kit       |