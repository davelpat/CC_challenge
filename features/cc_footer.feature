Feature: Common footer for contact info and navigation

  Scenario Outline: test that internal navigation links in the footer go to the correct page
    Given the common footer is present on the home page
    When I click on the <target page> link in the footer
    Then the <target page> page is displayed

    Examples:
      | target page        |
      | Features           |
      | Resources          |
      | Clients            |
      | CrowdCompass UK    |
      | About Us           |
      | Demo our Solutions |

    @slow
    Examples:
      | target page |
      | Newsroom    |

    # These pages are redirected to an external cVent site and need a different flow
    # because they are structured differently (no body id tag):
    # | Jobs | |
    # | Blog | |
