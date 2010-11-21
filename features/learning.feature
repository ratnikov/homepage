Feature: Users that visit my home page should learn about me

  Scenario: Users should learn my name
    When I visit "/"
     Then I should see my name

  Scenario: Users should learn my contact information
    When I visit "/"

     Then I should see my email
      And I should see my phone

  Scenario: Users should learn how I look like
    When I visit "/"

     Then I should see my gravatar

  Scenario: Users should learn about my locations on the web
    When I visit "/"

     Then I should see my github link
      And I should see my twitter link
