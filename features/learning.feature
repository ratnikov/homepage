Feature: Users that visit my home page should learn about me

  Scenario: Users should learn my name
    Given I visit "/"
     Then I should see "profile.name"

  Scenario: Users should learn my contact information
    Given I visit "/"

     Then I should see "profile.email"
      And I should see "profile.phone"
