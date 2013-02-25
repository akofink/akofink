Feature: Media objects are 
  Able to be Created
  Able to be viewed
  Able to be destroyed


  Scenario: A media object is created
    When I am on the media page
    And I fill in 'My Title' into the Title field
    And I fill in 'My Text' into the Content field
    And I press Post
    Then I should be on the media page
    And I should be able to see "My Text"
    And I should be able to see "My Title"

  Scenario: A media object is destroyed
    When there is a media object "My Latest Post"
    And I am on the media page
    And I click "Delete"
    Then I should be on the media page
    And "My Latest Post" should be destroyed
