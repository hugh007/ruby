Feature: login
Scenario: login system
  Given   I am just on "Home Page"
  When I fill in the username with "hugh007@21cn.com"
  And I fill in the password with "84808961"
  And I click login image button
  Then "hugh007@21cn.com" login success