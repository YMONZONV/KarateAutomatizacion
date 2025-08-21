@server17
Feature: Endpoint Consulta
  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios.

  Scenario Outline: Obtener una lista de todos los usuarios
    Given url "https://serverest.dev/usuarios"
    When method get
    Then status <code>
    * print 'response: ', response
    Examples:
      | code |
      | 200  |



