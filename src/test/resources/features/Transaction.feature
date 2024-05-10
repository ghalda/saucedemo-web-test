@Transaction @WebsiteTest
Feature: Transaction

  @PositiveCase
  Scenario Outline: Order Product with Valid Input
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | userName      | userPassword | productName                       |
      | standard_user | secret_sauce | Test.allTheThings() T-Shirt (Red) |

  @PositiveCase @SortProduct
  Scenario Outline: Order Product with sort product by Name (A to Z)
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User select product list by "<sortProduct>"
    Then User already sort product list by "<sortProduct>"
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | userName      | userPassword | productName                       | sortProduct   |
      | standard_user | secret_sauce | Test.allTheThings() T-Shirt (Red) | Name (A to Z) |

  @PositiveCase @SortProduct
  Scenario Outline: Order Product with sort product by Name (Z to A)
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User select product list by "<sortProduct>"
    Then User already sort product list by "<sortProduct>"
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | userName      | userPassword | productName                       | sortProduct   |
      | standard_user | secret_sauce | Test.allTheThings() T-Shirt (Red) | Name (Z to A) |

  @PositiveCase @SortProduct
  Scenario Outline: Order Product with sort product by Price (Low to High)
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User select product list by "<sortProduct>"
    Then User already sort product list by "<sortProduct>"
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | userName      | userPassword | productName                       | sortProduct         |
      | standard_user | secret_sauce | Test.allTheThings() T-Shirt (Red) | Price (low to high) |

  @PositiveCase @SortProduct
  Scenario Outline: Order Product with sort product by Price (High to Low)
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User select product list by "<sortProduct>"
    Then User already sort product list by "<sortProduct>"
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | userName      | userPassword | productName                       | sortProduct         |
      | standard_user | secret_sauce | Test.allTheThings() T-Shirt (Red) | Price (high to low) |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with First Name length less than 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                                         |
      | Gh        | Putri    | 30129    | Error: First Name should be at least 3 characters |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with First Name length is 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Gha       | Putri    | 30129    |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with First Name length more than 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Ghalda    | Putri    | 30129    |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with Last Name length less than 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                                         |
      | Ghalda    | Pu       | 30129    | Error: First Name should be at least 3 characters |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with Last Name length is 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Ghalda    | Put      | 30129    |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with Last Name length more than 3
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Ghalda    | Putri    | 30129    |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with Alphabetic Postal Code
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Ghalda    | Putri    | P8T      |

  @PositiveCase @OrderForm
  Scenario Outline: Order Product with Numeric Postal Code
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | firstName | lastName | postCode |
      | Ghalda    | Putri    | 10210    |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with Special Character Postal Code
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                                              |
      | Ghalda    | Putri    | 102!0    | Error: Postal Code is not allowed Special Character(s) |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with empty First Name
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                     |
      |           | Putri    | 10210    | Error: First Name is required |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with empty Last Name
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                    |
      | Ghalda    |          | 10210    | Error: Last Name is required |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with empty Postal Code
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                      |
      | Ghalda    | Putri    |          | Error: Postal Code is required |

  @NegativeCase @OrderForm
  Scenario Outline: Order Product with empty First Name, Last Name, and Postal Code
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "<firstName>" as a firstName, input "<lastName>" as lastName and input "<postCode>" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | firstName | lastName | postCode | errorText                     |
      |           |          |          | Error: First Name is required |

  @NegativeCase @OrderProduct
  Scenario Outline: Order less than 1 Product
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User see error "<errorText>"
    Examples:
      | errorText                             |
      | Error: Add to Cart at least 1 Product |

  @PositiveCase @OrderProduct
  Scenario Outline: Order 1 Product
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "<productName>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | productName         |
      | Sauce Labs Backpack |

  @PositiveCase @OrderProduct
  Scenario Outline: Order more than 1 Product
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "<productName1>" to cart
    And User add "<productName2>" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User already on Checkout Overview
    When User click on Finish Button
    Then User already on Success Page
    Examples:
      | productName1        | productName2          |
      | Sauce Labs Backpack | Sauce Labs Bike Light |

  @PositiveCase @OrderProduct
  Scenario Outline: Remove Product on Cart
    Given User already on website sauce demo
    When User input "standard_user" as userName and input "secret_sauce" as password
    And User click on Login button
    Then User already on sales page
    When User add "<productName1>" to cart
    And User add "<productName2>" to cart
    And User click icon cart
    Then User already on cart page
    When User remove product "<productName2>"
    Then Product "<productName1>" only on cart
    Examples:
      | productName1        | productName2          |
      | Sauce Labs Backpack | Sauce Labs Bike Light |

  @NegativeCase @ProblemUser
  Scenario Outline: Order Product using Problem Account
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | userName     | userPassword | errorText                    |
      | problem_user | secret_sauce | Error: Last Name is required |

  @NegativeCase @ProblemUser
  Scenario Outline: Order Product using Error Account
    Given User already on website sauce demo
    When User input "<userName>" as userName and input "<userPassword>" as password
    And User click on Login button
    Then User already on sales page
    When User add "Test.allTheThings() T-Shirt (Red)" to cart
    And User click icon cart
    Then User already on cart page
    When User click checkout button
    Then User already on Checkout Information Page
    When User input "Ghalda" as a firstName, input "Putri" as lastName and input "30129" as postCode
    And User click Continue Button
    Then User see error "<errorText>"
    Examples:
      | userName   | userPassword | errorText                    |
      | error_user | secret_sauce | Error: Last Name is required |