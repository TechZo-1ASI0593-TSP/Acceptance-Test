Feature: TS05 - API Producto

  Como usuario developer que configura la plataforma
  Quiero diseñar una API que facilite la gestión de productos
  Para que los usuarios puedan subir sus productos que ya no utilizan

  Scenario: Diseño de la API de Productos
    Given  el usuario developer está configurando la plataforma
    When diseña la API de Productos para gestionar los productos que suben los usuarios
    Then define los endpoints y rutas necesarios para permitir a los usuarios subir sus productos que ya no usan
    And cancelar la subida y obtener información sobre sus objetos
    And establece los requisitos de requerimiento y tipo de archivo

  Scenario: Obtener información de un producto
    Given  el endpoint "/products" está disponible
    When se envía una solicitud GET con el identificador del producto
    Then se recibe una respuesta con estado 200
    And se obtienen los detalles del producto solicitado

  Scenario: Producto no encontrado
    Given  el endpoint "/products" está disponible
    When se envía una solicitud GET con un identificador de un producto que no existe
    Then se recibe una respuesta con estado 404
    And se muestra un mensaje que indica "No se encontró el producto solicitado"

  Scenario: Creación de un nuevo producto
    Given  el endpoint "/products" está disponible
    When se envía una solicitud POST con los detalles del producto y el usuario asociado
    Then se recibe una respuesta con estado 201
    And se registra el producto con un nuevo ID y los detalles registrados

  Scenario: Crear un producto ya existente
    Given  el endpoint "/products" está disponible
    When se intenta crear un nuevo producto para un usuario que ya registró este producto
    Then se recibe una respuesta con estado 400
    And se muestra un mensaje que indica "El usuario ya registró este producto"

  Scenario: Eliminar un producto
    Given  el endpoint "/productos" está disponible
    When se envía una solicitud DELETE con los detalles del producto y el usuario asociado
    Then se recibe una respuesta con estado 200
    And se elimina el producto con su ID y los detalles registrados

  Scenario: Editar un producto
    Given  el endpoint "/products" está disponible
    When se envía una solicitud PUT con los detalles del producto y el usuario asociado
    Then se recibe una respuesta con estado 200
    And se editarán los detalles previamente registrados del producto
