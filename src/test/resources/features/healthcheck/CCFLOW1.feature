@CCFLOW1
Feature: CC Create Cost Center

  Scenario: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://gfeu-m01.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "21.1"
    And I set appian locale to "en_GB"

    Scenario Outline: Login
      Given I login with username "username"
      And I wait for progress bar
      And I set appian URL to "https://gfeu-m01.appiancloud.com/suite/sites/resolve"
      Examples:
      |Scenario | username|
      |Success  | hc.user1|

  Scenario: Fill out Create Query form
    Given I click on button "CREATE QUERY"
    And I wait for progress bar
    And I populate field "What type of query are you raising?" with "Data"
    And I wait for progress bar
