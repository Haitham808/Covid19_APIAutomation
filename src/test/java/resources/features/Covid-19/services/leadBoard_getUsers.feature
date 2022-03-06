@leadBoard-getUsers
Feature: leadBoard-getUsers

    Background:
        * url baseURL
        * def info = {user: '#(userName)'}
        * def user = info.user
    
    
    @getUsersList
    Scenario: get users list from lead board
        * configure headers = {'Authorization':'#(token)'}

        Given path 'v1/user'
        And request requestBody
        When method get
        Then status 200 

        * def verifyusersList = read ("./resources/features/Covid-19/services/schema/leadBoard_getUsers.json")
        * match response == '#[] verifyusersList' 


        