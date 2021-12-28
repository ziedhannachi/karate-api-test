@issues
Feature: To get jira issues
  I want to use this template for my feature file

  Scenario: To get all issues present in a project
    Given url 'https://juggernauttester.atlassian.net/'
    And header Authorization = 'Basic a2FKYXJsYSSwcmFKZWVwNEBnbWFpbC5jb206TXRINOhMUKgzaWZqSzJsZIpSa20xQKY4'
    And path 'rest/api/2/search'
    When method GET
    Then status 200
    And print response
