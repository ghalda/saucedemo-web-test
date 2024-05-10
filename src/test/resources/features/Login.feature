@Login @WebsiteTest
  Feature: Login

    @PositiveCase
      Scenario Outline: Login with valid Username & Password
        Given User already on website sauce demo
        When User input "<userName>" as userName and input "<userPassword>" as password
        And User click on Login button
        Then User already on sales page
      Examples:
        | userName      | userPassword |
        | standard_user | secret_sauce |

    @NegativeCase
    Scenario Outline: Login with invalid Username & Password
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName     | userPassword | errorText                                                                 |
        | standard_use | secret_sauc  | Epic sadface: Username and password do not match any user in this service |

    @NegativeCase
    Scenario Outline: Login with invalid Username
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName     | userPassword | errorText                                                                 |
        | standard_use | secret_sauce | Epic sadface: Username and password do not match any user in this service |

    @NegativeCase
    Scenario Outline: Login with invalid Password
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName      | userPassword | errorText                                                                 |
        | standard_user | secret_sauc  | Epic sadface: Username and password do not match any user in this service |

    @NegativeCase
    Scenario Outline: Login with empty Username & Password
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName | userPassword | errorText                          |
        |          |              | Epic sadface: Username is required |

    @NegativeCase
    Scenario Outline: Login with empty Username
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName | userPassword | errorText                          |
        |          | secret_sauce | Epic sadface: Username is required |

    @NegativeCase
    Scenario Outline: Login with empty Password
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName      | userPassword | errorText                          |
        | standard_user |              | Epic sadface: Password is required |

    @NegativeCase
    Scenario Outline: Login with User has been locked out
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName        | userPassword | errorText                                           |
        | locked_out_user | secret_sauce | Epic sadface: Sorry, this user has been locked out. |

    @NegativeCase
    Scenario Outline: Login with all of username is Uppercase
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName      | userPassword | errorText                                                                 |
        | STANDARD_USER | secret_sauce | Epic sadface: Username and password do not match any user in this service |

    @NegativeCase
    Scenario Outline: Login with all of password is Uppercase
      When User input "<userName>" as userName and input "<userPassword>" as password
      And User click on Login button
      Then User see error "<errorText>"
      Examples:
        | userName      | userPassword | errorText                                                                 |
        | standard_user | SECRET_SAUCE | Epic sadface: Username and password do not match any user in this service |