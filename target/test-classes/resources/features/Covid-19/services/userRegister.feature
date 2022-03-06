@userRegister
Feature: userRegister 

    Background:
        * url baseURL
        * def info = {user: '#(userName)'}
        * def user = info.user
    
    @runUserRegister
    Scenario Outline: User Register
        * configure headers = {'Authorization': '#(token)'}
        * def requestBody = read (<Request>)

        Given path 'auth/user/register'
        And request requestBody
        When method post
        Then status 200 


        Examples:
            | Request                                                                  |
            |'./resources/features/Covid-19/services/payload/userInfo.json'|