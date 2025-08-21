Feature: Endpoint Consulta
Como un administrador del sistema,
Quiero poder gestionar los usuarios a través de la API,
Para administrar la base de datos de usuarios.

  @server201
  Scenario Outline: 1.Registrar un nuevo usuario con datos válidos-Status 201
    Given url "https://serverest.dev/usuarios"
    * def request_body = read('classpath:Request/req.json')
    And request request_body
    * print 'request_body: ', request_body
    * def expected_response = read('classpath:Response/resp.json')
    * print 'responseEsperado: ', expected_response
    When method post
    * print 'response: ', response
    Then status 201
    And match response == expected_response
    Examples:
      | karate.read('classpath:Response/resp.csv')|

  @server202
  Scenario Outline: 2.Registrar un nuevo usuario con datos válidos-Status 400
    Given url "https://serverest.dev/usuarios"
    * def request_body = read('classpath:Request/req_400.json')
    And request request_body
    * print 'request_body: ', request_body
    * def expected_response = read('classpath:Response/resp_400.json')
    * print 'responseEsperado: ', expected_response
    When method post
    * print 'response: ', response
    Then status 400
    And match response == expected_response
    Examples:
      | karate.read('classpath:Response/resp_400.csv')|