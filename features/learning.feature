Feature: Users that visit my home page should learn about me

  Scenario: Users should learn my name
    When I visit "/"
     Then I should see "profile.name"

  Scenario: Users should learn my contact information
    When I visit "/"

     Then I should see "profile.email"
      And I should see "profile.phone"

  Scenario: Users should learn how I look like
    When I visit "/"

     Then I should see "ratnikov@gmail.com" gravatar
