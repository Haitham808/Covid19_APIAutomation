@leadBoard-addUser
Feature: leadBoard-addUser

    Background:
        * url baseURL
        * def info = {user: '#(userName)'}
        * def user = info.user
    
    
    @addNewUser
    Scenario Outline: add new user to Lead Board
        * configure headers = {'Authorization':'#(token)'}
        * def requestJson = read (<Request>)
        * def requestBody = requestJson[<requestType>]

        Given path 'v1/user'
        And request requestBody
        When method post
        Then status 201 

        * def userAdded = read ("./resources/features/Covid-19/services/schema/leadBoard_userAdded.json")
        * match response == '#(userAdded)' 


        Examples:
            | Request                                                           |requestType|
            |'./resources/features/Covid-19/services/payload/leadBoardUser.json'|'addUser'|