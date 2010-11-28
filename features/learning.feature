Feature: Users that visit my home page should learn about me
  Background: 
    Given profile attributes are as follows:
      | name   | John Doe |
      | email  | john@example.com |
      | phone  | (123) 456 7890   |
      | links  | http://github.com/johndoe, http://twitter.com/johndoe | 

      And profile includes following skills:
	| Rails: work-experience |
	| Javascript: jquery is awesome |
	| Test: love rspec |

  Scenario: Users should learn my name
    When I visit "/"
     Then I should see "John Doe"

  Scenario: Users should learn my contact information
    When I visit "/"

     Then I should see "john@example.com"
      And I should see "(123) 456 7890"

  Scenario: Users should learn how I look like
    When I visit "/"

     Then I should see "john@example.com" gravatar

  Scenario: Users should learn about my locations on the web
    When I visit "/"

     Then I should see a link to "http://github.com/johndoe"
      And I should see a link to "http://twitter.com/johndoe"

  @wip
  Scenario: Users should learn about my skills
    When I visit "/"

    Then I should see "work-experience"
     And I should see "jquery is awesome"
     And I should see "love rspec"
