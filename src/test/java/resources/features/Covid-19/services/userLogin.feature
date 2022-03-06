@userLogin
Feature: userLogin 

    Background:
        * url baseURL
        * def info = {user: '#(userName)'}
        * def user = info.user
    
    
    @runUserLogin
    Scenario Outline: User Login
        * configure headers = {'Authorization':'#(token)'}
        * def requestBody = read (<Request>)

        Given path 'auth/user/login'
        And request requestBody
        When method post
        Then status 200 

        * def userLogin = read ("./resources/features/Covid-19/services/schema/userLogin.json")
        * match response == '#(userLogin)' 


        Examples:
            | Request                                                                  |
            |'./resources/features/Covid-19/services/payload/userInfo.json'|