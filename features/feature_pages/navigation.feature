Feature: Navigate to a Static Page
  In order to get to other pages
  The links have to work

  Scenario: The navigation links are correct
    When I am on the home page
    Then I should see the a tag with the value "Home"
    Then I should see the a tag with the value "About"
    Then I should see the a tag with the value "Contact"
    Then I should see the a tag with the value "Projects"

  Scenario: Check the content on the home page
    When I am on the home page
    Then I should see the h1 tag with the value "Blog"
    And I should see the navigation links

  Scenario: Check the content on the about page
    When I am on the about page
    Then I should see the h1 tag with the value "About"
    And I should see the navigation links

  Scenario: Check the content on the contact page
    When I am on the contact page
    Then I should see the h1 tag with the value "Contact"
    And I should see the navigation links

  Scenario: Check the content on the projects page
    When I am on the projects page
    Then I should see the h1 tag with the value "Projects"
    And I should see the navigation links

  Scenario: The navigation links work
    When I am on the home page
    And I click "Home" in the navigation links
    Then I should be on the home page
    
  Scenario: The navigation links work
    When I am on the home page
    And I click "About" in the navigation links
    Then I should be on the about page
    
  Scenario: The navigation links work
    When I am on the home page
    And I click "Contact" in the navigation links
    Then I should be on the contact page
    
  Scenario: The navigation links work
    When I am on the home page
    And I click "Projects" in the navigation links
    Then I should be on the projects page