Feature:
  I want to be able to get the static pages

  Scenario: Navigate to the home page
    When I am on the home page
    Then I should see the h1 tag "Blog"

  Scenario: Navigate to the about page
    When I am on the about page
    Then I should see the h1 tag "About"

  Scenario: Navigate to the contact page
    When I am on the contact page
    Then I should see the h1 tag "Contact"

  Scenario: Navigate to the projects page
    When I am on the projects page
    Then I should see the h1 tag "Projects"