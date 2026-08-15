📌 HU-008 — AUTENTICACIÓN Y REGISTRO DE ACCESOS
🔐 Módulo: Seguridad y Autenticación

Objetivo: Garantizar la trazabilidad de los accesos realizados al sistema CafeSoft mediante el registro automático de cada inicio de sesión exitoso.

🆔 Información general
Elemento	Detalle
ID de Historia	HU-008
Nombre	Autenticación y registro de accesos
Módulo	Autenticación y Seguridad
Proyecto	CafeSoft
Sprint	Sprint 2
Prioridad	🔴 Alta
Tipo	Seguridad / Auditoría
Estado	🟡 Nueva
👤 Historia de usuario
Como

usuario registrado de CafeSoft

Quiero

que el sistema registre automáticamente cada vez que realizo un inicio de sesión exitoso.

Para

mantener un historial de accesos que permita identificar quién ingresó al sistema, cuándo lo hizo y desde qué tipo de dispositivo.

🎯 Objetivo funcional

Implementar un mecanismo de registro automático de accesos que se ejecute después de una autenticación exitosa.

El proceso deberá funcionar en segundo plano, de manera transparente para el usuario, evitando agregar pasos adicionales al proceso normal de inicio de sesión.

La información obtenida podrá utilizarse posteriormente para tareas de:

🔐 Seguridad
📊 Auditoría
👤 Seguimiento de usuarios
🕐 Control de accesos
🔎 Identificación de actividad dentro del sistema
⚙️ Funcionamiento

El proceso de autenticación deberá seguir el siguiente flujo:

┌───────────────────────┐
│  Usuario ingresa      │
│  sus credenciales     │
└───────────┬───────────┘
            │
            ▼
┌───────────────────────┐
│ Validación de         │
│ usuario y contraseña  │
└───────────┬───────────┘
            │
       ¿Credenciales
         correctas?
        /          \
      NO            SÍ
      │              │
      ▼              ▼
┌───────────┐  ┌────────────────────┐
│ Rechazar  │  │ Permitir acceso    │
│ acceso    │  │ al sistema        │
└───────────┘  └─────────┬──────────┘
                         │
                         ▼
                ┌────────────────────┐
                │ Obtener información│
                │ del acceso         │
                └─────────┬──────────┘
                          │
                          ▼
                ┌────────────────────┐
                │ Registrar acceso   │
                │ en segundo plano   │
                └─────────┬──────────┘
                          │
                          ▼
                ┌────────────────────┐
                │ Usuario continúa   │
                │ utilizando CafeSoft│
                └────────────────────┘
🗃️ Datos a registrar

Cada inicio de sesión exitoso deberá generar un registro con la siguiente información:

Campo	Descripción
ID del usuario	Identificador del usuario que realizó el acceso
Fecha	Día en que se realizó el inicio de sesión
Hora	Hora exacta del acceso
Tipo de dispositivo	Dispositivo utilizado para acceder al sistema
Ejemplo
ID Usuario: 25
Fecha: 15/08/2026
Hora: 10:24:36
Dispositivo: Android
✅ Criterios de aceptación
CA-01 — Registro después de autenticación

Dado que un usuario se encuentra registrado en CafeSoft,

cuando proporciona credenciales válidas,

entonces el sistema deberá permitir el acceso y generar automáticamente un registro de actividad.

CA-02 — Identificación del usuario

Dado que el inicio de sesión fue exitoso,

cuando se genere el registro,

entonces deberá almacenarse el ID correspondiente al usuario autenticado.

CA-03 — Registro temporal

Dado que un usuario inicia sesión correctamente,

cuando se genere el registro,

entonces deberán almacenarse la fecha y hora exactas del acceso.

CA-04 — Identificación del dispositivo

Dado que el usuario accede correctamente,

cuando se registre la actividad,

entonces deberá almacenarse el tipo de dispositivo utilizado.

CA-05 — Proceso transparente

Dado que el usuario inició sesión correctamente,

cuando el sistema registre el acceso,

entonces el proceso deberá ejecutarse automáticamente en segundo plano sin solicitar información adicional al usuario.

🔒 Requisitos de seguridad

El registro de accesos deberá cumplir con las siguientes consideraciones:

El registro solamente se generará después de una autenticación exitosa.
La información deberá estar asociada al usuario correspondiente.
El proceso deberá ejecutarse automáticamente.
Los datos registrados deberán mantenerse disponibles para posteriores consultas de auditoría.
El registro no deberá permitir modificar la identidad del usuario asociado al acceso.
📊 Resultado esperado

Al completar correctamente el inicio de sesión, CafeSoft deberá contar con evidencia del acceso realizado.

Por ejemplo:

┌─────────────────────────────────────────────┐
│              REGISTRO DE ACCESO             │
├─────────────────────────────────────────────┤
│ Usuario:       Uriel                        │
│ ID Usuario:   25                            │
│ Fecha:        15/08/2026                    │
│ Hora:         10:24:36                      │
│ Dispositivo:  Android                       │
└─────────────────────────────────────────────┘

Esto permitirá que el sistema tenga una trazabilidad básica de los accesos de los usuarios.

💻 Impacto en CafeSoft

Esta funcionalidad fortalece el módulo de seguridad del sistema y permite sentar las bases para futuras funcionalidades como:

📋 Historial de accesos.
🔎 Consulta de actividad por usuario.
📅 Filtrado de accesos por fecha.
📱 Identificación de dispositivos.
🚨 Detección de accesos inusuales.
📊 Reportes de actividad de usuarios.
🏁 Definición de terminado — Definition of Done

La historia podrá considerarse terminada cuando:

 El inicio de sesión funcione correctamente.
 Se genere un registro después de cada autenticación exitosa.
 El registro almacene el ID del usuario.
 El registro almacene fecha y hora.
 El registro almacene el tipo de dispositivo.
 El proceso funcione automáticamente en segundo plano.
 Se hayan realizado pruebas de autenticación.
 Se haya verificado la información almacenada.
 Los cambios hayan sido integrados al proyecto.
 La documentación de la funcionalidad haya sido actualizada.
