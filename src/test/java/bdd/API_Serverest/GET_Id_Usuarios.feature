Feature: Endpoint Consulta
  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios.

  @server20
  Scenario Outline: 1.buscar un usuario específico por su ID-Status 200
    Given url "https://serverest.dev/usuarios/<id>"
    * def expected_response = read('classpath:Response/resp_GetId.json')
    * print 'responseEsperado: ', expected_response
    When method get
    * print 'response: ', response
    Then status 200
    And match response == expected_response
    Examples:
    | id               |
    | 0Ili3tDXRkA6YZvP |


  @server21
  Scenario Outline: 2.buscar un usuario específico por su ID-Status 400
    Given url "https://serverest.dev/usuarios/<id>"
    * def expected_response = read('classpath:Response/resp_GetId_400.json')
    * print 'responseEsperado: ', expected_response
    When method get
    * print 'response: ', response
    Then status 400
    And match response == expected_response
    Examples:
      | id               |
      | 0Ili3tDXRkA6YZvx  |