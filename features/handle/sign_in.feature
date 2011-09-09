Feature: Sign in with handle
  In order to get access to protected sections of the site
  A user
  Should be able to sign in with handle

  Scenario: User signs in successfully with handle
    Given I am signed up and confirmed as "email@person.com/password"
    And my handle is "signinnow"
    When I go to the sign in page
    And I sign in as "signinnow/password"
    Then I should see "Signed in"
    And I should be signed in
    When I return next time
    Then I should be signed in
