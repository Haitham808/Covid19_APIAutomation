@VerifyToken
Feature: Verify Token 

    Background:
        * url baseURL
    
    
    @runVerifyToken
    Scenario: Verify Token
        * configure headers = {'Authorization':'#(token)'}
        Given path 'auth/verifytoken'
        When method get
        Then status 200 

        * def verifyToken = read ("./resources/features/Covid-19/services/schema/verifyToken.json")
        * match response == '#(verifyToken)' 


    