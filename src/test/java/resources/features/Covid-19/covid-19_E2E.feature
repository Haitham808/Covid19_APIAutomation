@E2E
Feature: Covid19 E2E
Background:
  * url baseURL

@dev_E2E
Scenario Outline: E2E scenario

  * print '######### --  verify token  -- #########'
  * call read('./services/verifyToken.feature') {token:<token>}
  * call read('./services/userRegister.feature') {token:<token>,userName:<userName>}
  * call read('./services/userLogin.feature') {token:<token>,userName:<userName>}
  * call read('./services/leadBoard_getUsers.feature') {token:<token>}
  * call read('./services/leadBoard_addUser.feature') {token:<token>,userName:<userName>}
  * call read('./services/leadBoard_updateUser.feature') {token:<token>,userName:<userName>}


  Examples:
            |userName|token |  
            |'haitham2' |'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJIYWl0aGFtS2V5IiwiZW1haWwiOiJoYWl0aGFtLml0ODBAZ21haWwuY29tIiwiaWF0IjoxNjQ2NDM0MTE1LCJleHAiOjE2NDY2OTMzMTV9.l_FOViVFz6zKFJlzMhUOTXgNyVbuc3ZDxYokCoRdrU5PJyvZs2ljO-Z6Pfs6GAqXDtzIgqKJbv_PtluXh-fCoA' |
    