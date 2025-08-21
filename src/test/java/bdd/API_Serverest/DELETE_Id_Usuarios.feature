Feature: Endpoint Consulta
  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios.

  @server18
  Scenario Outline: 1.actualizar la información de un usuario existente-Status 200
    Given url "https://serverest.dev/usuarios/<id>"
    * def expected_response = read('classpath:Response/resp_delete_200.json')
    * print 'responseEsperado: ', expected_response
    When method delete
    * print 'response: ', response
    Then status 200
    And match response == expected_response
    Examples:
      | id               |
      | 0Ili3tDXRkA6YZvP |