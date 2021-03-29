@healthcheckresolve
  
  Feature: Create Query
    
    Scenario: Setup Chrome browser
      Given I setup with "CHROME" browser
      And I set timeout seconds to "20"
      And I set appian URL to "https://gfeu-m01.appiancloud.com/suite/sites/resolve/?signin=native"
      And I set appian version to "21.1"
      And I set appian locale to "en_GB"
      And I wait for progress bar
      
      Scenario Outline: Login as resolver
        Given I login with username "<username>"
        And I wait for progress bar
        Examples:
        |scenario | username |
        |success | hc.user1 |

    Scenario: DQ Report
      Given I click on site page "REPORTS"
      And I wait for progress bar
      When I click on link "Data Quality-Analytical Report"
      And I wait for progress bar
      And I click on "Filters"
      And I wait for progress bar
      And I verify field "Status" contains
      | Closed |
      |Under Review |


        Scenario: Verify Create Query scenario and fields
         Given I click on site page "HOME"
          And I wait for progress bar
          When I verify button "CREATE QUERY" is present
          Then I click on button "CREATE QUERY"
          And I wait for progress bar
          And I verify text "Create Query" is present
          And I wait for "3" seconds
          
        
        Scenario: Sign Out and Tear down
          Given I logout
          And I wait for progress bar
          And I tear down