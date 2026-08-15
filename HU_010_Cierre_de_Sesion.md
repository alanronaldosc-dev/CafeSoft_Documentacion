# Historia de Usuario: Cierre de Sesión Seguro

**ID:** HU-001
**Título:** Cierre de Sesión Seguro
**Prioridad:** Alta
**Estado:** Por hacer

## Descripción
**Como** usuario,
**quiero** poder cerrar mi sesión activa de manera segura,
**para** garantizar que nadie más pueda acceder a mis datos o funciones desde mi dispositivo.

---

## Criterios de Aceptación

### 1. Accesibilidad del botón
* **Dado** que el usuario tiene una sesión activa en el sistema,
* **Cuando** navega por la interfaz de usuario,
* **Entonces** debe tener a su disposición un botón de "Cerrar sesión" que sea claramente visible y accesible (por ejemplo, en la barra de navegación superior o en el menú de usuario).

### 2. Redirección tras la salida
* **Dado** que el usuario decide terminar su sesión,
* **Cuando** hace clic en el botón de "Cerrar sesión" y confirma la acción (si aplica),
* **Entonces** el sistema debe destruir la sesión y redirigir de manera inmediata y obligatoria a la pantalla de *Login*.

### 3. Prevención de reingreso (Bloqueo del botón "Atrás")
* **Dado** que el usuario ha cerrado su sesión exitosamente y se encuentra en la pantalla de *Login*,
* **Cuando** intenta utilizar el botón de navegación "Atrás" de su navegador web,
* **Entonces** el sistema debe bloquear el acceso a las pantallas protegidas previamente visitadas, solicitando nuevamente la autenticación antes de mostrar cualquier información o funcionalidad restringida.

---

## Notas Técnicas y Consideraciones
* **Invalidación de Tokens/Cookies:** Asegurarse de que el cierre de sesión no solo elimine los datos en el cliente (localStorage, sessionStorage, cookies), sino que también invalide el token de sesión en el lado del servidor (backend).
* **Control de Caché:** Para cumplir con el criterio 3, es necesario implementar cabeceras HTTP adecuadas (`Cache-Control: no-cache, no-store, must-revalidate`, `Pragma: no-cache`, `Expires: 0`) en las vistas protegidas para evitar que el navegador cargue la página desde su memoria caché.
