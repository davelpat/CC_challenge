Feature: Common footer for contact info and navigation

  Scenario: test that internal navigation links in the footer go to the correct page
    Given the common footer is present on the home page
    When I click on the 'Features' link in the footer
    Then the 'Features' page is displayed