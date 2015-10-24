Feature: Common footer for contact info and navigation

  Scenario Outline: test that internal navigation links in the footer go to the correct page
    Given the common footer is present on the home page
    When I click on the <target page> link in the footer
    Then the <target page> page is displayed

    Examples:
      | target page        |
      | Features           |
