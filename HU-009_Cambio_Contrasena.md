# HU-009 – Cambio obligatorio de contraseña en el primer inicio de sesión

## 1. Descripción

Como empleado, quiero forzar un cambio de contraseña en mi primer inicio de sesión para reemplazar la clave temporal que me asignó el administrador por una contraseña privada y segura.

## 2. Objetivo

Implementar un mecanismo de seguridad que obligue a los usuarios nuevos a cambiar su contraseña temporal durante su primer acceso al sistema, garantizando que únicamente el usuario conozca sus credenciales definitivas.

---

## 3. Justificación

Las contraseñas temporales son generadas y entregadas por el administrador durante el proceso de creación de cuentas. Sin embargo, mantener dichas contraseñas representa un riesgo de seguridad debido a que pueden ser conocidas por terceros.

La implementación de un cambio obligatorio de contraseña durante el primer acceso permite fortalecer la seguridad del sistema, proteger la información de los usuarios y cumplir con buenas prácticas de gestión de credenciales.

---

## 4. Requerimientos funcionales

### RF-01
El sistema deberá identificar cuando un usuario inicia sesión por primera vez.

### RF-02
El sistema deberá redirigir automáticamente al usuario a una pantalla exclusiva para el cambio de contraseña.

### RF-03
El usuario no podrá acceder a otras funcionalidades hasta completar exitosamente el cambio de contraseña.

### RF-04
La nueva contraseña deberá almacenarse de forma segura en la base de datos.

### RF-05
Una vez actualizado el registro, el indicador de primer acceso deberá cambiar a falso.

---

## 5. Criterios de aceptación

### CA-01
Si el usuario posee una contraseña temporal válida, el sistema deberá solicitar obligatoriamente una nueva contraseña.

### CA-02
La nueva contraseña deberá cumplir con las reglas mínimas de seguridad establecidas por el sistema.

### CA-03
Al guardar la nueva contraseña exitosamente, el usuario podrá continuar utilizando la aplicación normalmente.

### CA-04
El proceso deberá impedir el acceso a cualquier módulo mientras el cambio de contraseña no haya sido completado.

---

## 6. Componentes involucrados

### Frontend
- Pantalla de inicio de sesión.
- Pantalla de cambio de contraseña.
- Validaciones de formularios.

### Backend
- Controlador de autenticación.
- Servicio de actualización de contraseña.
- Validación de primer acceso.

### Base de datos
- Campo indicador de primer inicio de sesión.
- Actualización del hash de contraseña.

---

## 7. Flujo de operación

1. El administrador crea una cuenta para el usuario.
2. Se asigna una contraseña temporal.
3. El usuario inicia sesión.
4. El sistema detecta que es el primer acceso.
5. El sistema redirige al formulario de cambio de contraseña.
6. El usuario registra una nueva contraseña.
7. El sistema actualiza la información.
8. El usuario obtiene acceso normal a la aplicación.

---

## 8. Validaciones realizadas

- Verificación de inicio de sesión con contraseña temporal.
- Redirección correcta a la pantalla de actualización.
- Validación de coincidencia de contraseñas.
- Actualización correcta en base de datos.
- Acceso normal después del cambio exitoso.

---

## 9. Resultado esperado

El sistema garantizará que todos los usuarios sustituyan sus contraseñas temporales durante su primer acceso, fortaleciendo la seguridad general de la plataforma CaféSoft y reduciendo riesgos asociados al uso de credenciales compartidas.