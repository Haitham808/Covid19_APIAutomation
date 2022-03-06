@GenerateToken
Feature: Generate Token 

  Background:
    * url baseURL
    
  Scenario: Generate Token and sent to email

    Given path 'auth/gentoken'
    When method post
    Then status 200
    * match response contains 'emailTo'