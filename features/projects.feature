Feature: Users should learn about the projects I have done

  Background:
    Given there are following projects:
      | name           | url               | tag_list          | description                                     |
      | foobar         | http://foobar.com | rails, postgresql | An awesome project that describes foos and bars |
      | alpha centauri |                   | astronomy, travel | An astronomical project about space voyage      |

  Scenario: A user should see project information

    When I am on the home page

    Then I should see "foobar"
     And I should see /project that describes foos and bars/
     And I should see a link to "http://foobar.com"

     And I should see "alpha centauri"
     And I should see /space voyage/

  Scenario: A user should learn what technologies projects used via tags
    When I am on the home page

    Then I should see a rails tag
     And I should see a postgresql tag

     And I should see "astronomy"
     And I should see "voyage"
