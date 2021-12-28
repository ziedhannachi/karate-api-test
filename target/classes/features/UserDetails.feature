@user-details
Feature: User Details

  Scenario: Get all test
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    #And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg"},"support":{"url":"https:\/\/reqres.in\/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
    Then print response
   # And match response == {"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"},"support":{"text":"To keep ReqRes free, contributions towards server costs are appreciated!","url":"https:\/\/reqres.in\/#support-heading"}}
		* def expectedOutput = read('file:src/test/resources/result/result.json')
		And match response == expectedOutput
		And match response.date.id == 2
    
    
  # * def myVar = 'test'
   # Then print myVar