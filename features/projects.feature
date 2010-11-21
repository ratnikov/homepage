Feature: Users should learn about the projects I have done

  Background:
    Given there are following projects:
      | name  | description | url |
      | foobar | An awesome project that describes foos and bars | http://foobar.com |
      | alpha centauri | An astronomical project about space voyage |                |

  @wip
  Scenario: A user should see project information

    When I am on the home page

    Then I should see "foobar"
     And I should see /project that describes foos and bars/
     And I should see a link to "http://foobar.com"

     And I should see "alpha centauri"
     And I should see /space voyage/
