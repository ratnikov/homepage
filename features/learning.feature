Feature: Users that visit my home page should learn about me

  Scenario: Users should learn my name
    Given I visit "/"
     Then I should see "profile.name"
