@leadBoard-updateUser
Feature: leadBoard-updateUser

    Background:
        * url baseURL
        * def info = {user: '#(userName)'}
        * def user = info.user
    
    
    @runUpdateUser
    Scenario Outline: update user score in lead board
        * configure headers = {'Authorization':'#(token)'}
        * def requestJson = read (<Request>)
        * def requestBody = requestJson[<requestType>]

        Given path 'v1/user'
        And request requestBody
        When method put
        Then status 204

        Examples:
            | Request                                                           |requestType|
            |'./resources/features/Covid-19/services/payload/leadBoardUser.json'|'updateUser'|
