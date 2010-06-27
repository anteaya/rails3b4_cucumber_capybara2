Feature: Manage Posts
  In order to fill empty space
  As an author
  I want to manage posts
  
  Scenario: Create post
    # Given /^(?:|I )am on (.+)$/ do |page_name|
    Given I am on the create new post page
    # When /^(?:|I )fill in "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/ do |field, value, selector|
    When I fill in "post_title" with "Test"
    And I fill in "post_description" with "test test test"
    # When /^(?:|I )press "([^"]*)"(?: within "([^"]*)")?$/ do |button, selector|
    And I press "post_submit"
    # Then /^(?:|I )should see "([^"]*)"(?: within "([^"]*)")?$/ do |text, selector|
    Then I should see "Test" within "h1"
    And I should see "test test test" within "p"
    