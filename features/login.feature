
Feature: Logging in
  As a user
  I want to login with my details
  So that I can configure the server 
 
  Scenario: User is not logged in
    Given no current user
    When I access a page
    Then the login form should be shown

  Scenario: User enters wrong password
    Given a registered user with the email "venky@gmail.com" with password "test123" exists
    And I am on the "/users/sign_in" page
    When I fill in "user_email" with "venky@gmail.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    Then the login form should be shown
    
  Scenario: User is registered and enters correct password
    Given a registered user with the email "user@example.com" with password "test123" exists
    And I am on the "/users/sign_in" page
    When I fill in "user_email" with "user@example.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    Then the login form should be shown

    
  Scenario: User is confirmed and enters correct password
    Given a confirmed user with the email "user@example.com" with password "password" exists
    And I am on the "/users/sign_in" page
    When I fill in "user_email" with "user@example.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    And I should see "Signed in successfully"    
    And I should be signed in


