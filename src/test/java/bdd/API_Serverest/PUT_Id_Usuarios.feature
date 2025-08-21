Feature: Endpoint Consulta
  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios.

  @server19
  Scenario Outline: 1.actualizar la información de un usuario existente-Status 200
    Given url "https://serverest.dev/usuarios/<id>"
    * def request_body = read('classpath:Request/req_put_200.json')
    And request request_body
    * print 'request_body: ', request_body
    * def expected_response = read('classpath:Response/resp_put_200.json')
    * print 'responseEsperado: ', expected_response
    When method put
    * print 'response: ', response
    Then status 200
    And match response == expected_response
    Examples:
      | id               |
      | 0Ili3tDXRkA6YZvP |
