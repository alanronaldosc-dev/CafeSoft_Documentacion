ENTREGABLE 1. Documentación de reglas de negocio
Reglas de negocio para la administración de CaféSoft
Objetivo
Definir las reglas de negocio que regirán el funcionamiento del módulo administrativo de CaféSoft, permitiendo una correcta gestión de productos, inventarios y usuarios. Estas reglas garantizan la integridad de la información, la seguridad del sistema y el correcto funcionamiento de las operaciones administrativas.
1. Gestión de productos
La administración de productos es una de las funciones principales del sistema, ya que permite controlar el catálogo de artículos disponibles para la venta.
Reglas de negocio
RN-01. Registro obligatorio de información
Todo producto deberá contar como mínimo con:
Nombre
Descripción
Categoría
Precio
Existencia inicial
Estado (Activo/Inactivo)
No será posible registrar un producto si alguno de estos datos está vacío.
RN-02. Precio válido
El precio de venta deberá ser mayor a cero.
No se permitirá registrar productos con precios negativos o iguales a cero.
RN-03. Productos duplicados
No podrán existir dos productos con el mismo nombre dentro de la misma categoría.
En caso de detectarse un duplicado el sistema notificará al administrador.
RN-04. Edición de productos
El administrador podrá modificar la información de cualquier producto.
Todos los cambios deberán quedar reflejados inmediatamente dentro del sistema.
RN-05. Eliminación de productos
Los productos no serán eliminados físicamente de la base de datos.
Cuando un producto deje de utilizarse únicamente cambiará su estado a Inactivo, conservando así el historial de ventas.
RN-06. Disponibilidad
Solamente los productos con estado Activo podrán ser mostrados para realizar ventas.
2. Gestión de inventario
El inventario permitirá controlar las existencias disponibles de cada producto.
Reglas de negocio
RN-07. Existencias
Ningún producto podrá tener existencias negativas.
RN-08. Actualización automática
Cada venta disminuirá automáticamente la cantidad disponible del inventario.
Cada compra o reposición aumentará automáticamente la existencia del producto.
RN-09. Producto agotado
Cuando la existencia llegue a cero el sistema marcará automáticamente el producto como Agotado.
RN-10. Control administrativo
Únicamente el administrador podrá realizar ajustes manuales al inventario.
RN-11. Historial
Todas las entradas y salidas del inventario deberán quedar registradas con fecha, hora y responsable del movimiento.
3. Gestión de usuarios
El sistema permitirá administrar los usuarios que tendrán acceso a CaféSoft.
Reglas de negocio
RN-12. Registro de usuarios
Todo usuario deberá contar con:
Nombre
Correo electrónico
Contraseña
Rol asignado
Estado
RN-13. Correo único
No podrán existir dos usuarios registrados con el mismo correo electrónico.
RN-14. Roles
Cada usuario deberá tener asignado un rol.
Ejemplo:
Administrador
Empleado
RN-15. Permisos
Los permisos dependerán del rol asignado.
El administrador tendrá acceso total al sistema.
Los empleados únicamente podrán acceder a las funciones autorizadas.
RN-16. Desactivación
Cuando un usuario sea desactivado dejará de tener acceso al sistema, sin eliminar su información histórica.
Beneficios esperados
La aplicación de estas reglas permitirá:
Mantener información consistente.
Evitar errores durante la administración.
Mejorar el control del inventario.
Proteger el acceso al sistema.
Facilitar la operación diaria del negocio.

