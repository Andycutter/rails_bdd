Feature: Edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background:
        Given I visit the 'landing' page
        When I click 'Edit Article' link

    Scenario: Successfully edit an article [Happy Path]
        When I fill in 'Title' with 'Learning something else'
        And I fill in 'Content' with 'And now for something completely different'
        And I click 'Save edit' button
        Then I should not see 'Title' with 'Learning Rails 5'
        Then I should not see 'Content' with 'Excited about learning a new framework'
