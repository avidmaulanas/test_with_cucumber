@require_login
Feature: Edit blog
	As a blog owner
	I can edit my blog posts

Scenario: Edit blog
	Given there is a post with title "Dummy post" and	content "Dummy content"
	And I am on the blog homepage
  When I click "Edit" link
  And I fill "Updated title" as Title
  And I fill "Updated content" as content
  And I click "Post" button
	Then I can see it has been updated
  When I click "Edit" link
  And I fill "" as Title
  And I fill "" as content
  And I click "Post" button
  Then I should see the error messages

