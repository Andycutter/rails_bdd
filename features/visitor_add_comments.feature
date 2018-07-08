Feature: Visitor can add comment to articles
    As a Visitor
    In order to let the world know my opinion about an article
    I would like to be able to add a comment to the article

    Background:
        Given the following articles exists
            | title                 | content                           |
            | A breaking news item  | Some really breaking action       |
            | Learn Rails 5         | Build awesome rails applications  |

    Scenario: Visitor can add a comment to an article
        When I visit the site
        And I click on 'Learn Rails 5'
        And I fill in the 'comment' field with 'my comment'
        And I fill in 'Email' with 'email@test.se'
        And I click on 'Save' button
        Then I should be on the 'Learn Rails 5' page
        Then I should see 'Your comment was added'
        And I should see 'my comment'

