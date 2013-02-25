Feature: Blog objects are 
  Able to be Created
  Able to be viewed
  Able to be destroyed


  Scenario: A blog object is created
    When I am on the home page
    And I fill in "My Test Blog Post" into the Title field
    And I fill in "My test content." into the Content field
    And I press Post
    Then I should be on the home page
    And I should be able to see "My Test Blog Post"
    And I should be able to see "My test content."

  Scenario: A blog object is destroyed
    When there is a blog object "My Test Blog Post"
    And I am on the home page
    And I click "Delete"
    Then I should be on the home page
    And "My Test Blog Post" should be destroyed
