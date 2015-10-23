@require_login
Feature: Remove blog post
  As a blog owner
  I can remove blog post

Scenario: Remove blog post
  Given there are already 1 posts
  And I am on the blog homepage
  When I click "Destroy" link
  Then I can see list of 0 posted blogs
