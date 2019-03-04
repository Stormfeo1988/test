@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the ThinkMobiles Log In page"
    When User navigates to the "ThinkMobiles Log In" page with url "https://thinkmobiles.com/login/"
    Then Page title is equal to "ThinkMobiles"

  Scenario: 1: Check Log in Function Personal
    When User clicks "enter e-mail field" ".active [name='email']"
    And User enters "qacoursessfyou@gmail.com" in "enter e-mail field" ".active [name='email']"
    And User clicks "enter password field" ".active [name='password']"
    And User enters "#Ghbdtnrehcb2019*" in "enter password field" ".active [name='password']"
    And User clicks "Log In Button" ".active div.btn-group.center button"
    And User waits 3000 seconds
    And User navigates to the "Account" page with url "https://thinkmobiles.com/profile/account"
    And User waits 3000 seconds
    Then "Account" "#urlTabsWrap .changeUrlBtn.active" is displayed
#
#  Scenario: 2: Check Log in Function Vendor
#    When User clicks "enter e-mail field" ".active [name='email']"
#    And User enters "admin@ilead.io" in "enter e-mail field" ".active [name='email']"
#    And User clicks "enter password field" ".active [name='password']"
#    And User enters "12345678" in "enter password field" ".active [name='password']"
#    And User clicks "Log In Button" ".active div.btn-group.center button"
#    And User waits 3000 seconds
#    And User navigates to the "Vendor" page with url "https://thinkmobiles.com/profile/vendor/"
#    And User waits 3000 seconds
#    Then "Vendor" "#urlTabsWrap .changeUrlBtn.active" is displayed
#