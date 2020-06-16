# Script para la limpieza de portátiles de BBTK preparados para teletrabajo.

El script elimina la cuenta con la que se ha iniciado sesión (en los portátiles para teletrabajo es el usuario `Usuario`) y la vuelve a crear. Eso elimina por completo el perfil del usuario y la información personal que tuviera asociada.

Para la ejecución hay que ejecutar dos scripts:

   1. **Activar la directiva de ejecución de scripts**

Localizar el fichero `ExecutionPolicyUnrestricted.reg` y hacer doble clic sobre él para ejecutarlo. Saldrá la siguiente advertencia, en la que hay que pulsar el botón `Sí`. Al finalizar debe salir un mensaje indicando que las claves se añadieron correctamente al Registro.

<p align="center">
    <img src="resources/images/registro1.png" alt="Cambios en el registro" width="400"/>
    <img src="resources/images/registro2.png" alt="Cambios hechos en el registro" width="400"/>
</p>

> NOTA: Este paso solo hay que hacerlo una vez por ordenador.

   2. **Ejecutar el script**

Una vez tenemos localizado el script `bbtk_cleanup.ps1` en el explorador de archivos, pulsar con el botón derecho del ratón sobre él, y seleccionar `Ejecutar con Powershell`. Saldrá una ventana indicando si se quieren permitir que se hagan cambios en el dispositivo, a la que hay que contestar que `Sí`.

<p align="center"><img src="resources/images/script1.png" alt="Ejecutar el script" width="500"/></p>

Si se muestra un mensaje con el texto `Cambio de directiva de ejecición`, contestar con una `S`.

<p align="center"><img src="resources/images/script0.png" alt="Cambio de directiva de ejecucion" width="500"/></p>

A continuación, el script pregunta si se está seguro de continuar, a lo que hay que responder que sí con la letra `S`.

<p align="center"><img src="resources/images/script2.png" alt="Pregunta de confirmacion" width="500"/></p>

Por último, se cerrará la sesión automáticamente al pasar 5 segundos. Al volver a iniciar sesión de nuevo, se iniciará el proceso de inicialización de la cuenta. Se recomienda usar las siguientes opciones, aunque puede habilitarse cualquiera de las opciones si se considera necesario.

<p align="center">
    <img src="resources/images/inicio1.png" alt="Reconocimiento de voz en linea" width="200"/>
    <img src="resources/images/inicio2.png" alt="Ubicacion" width="200"/>
    <img src="resources/images/inicio3.png" alt="Buscar dispositivo" width="200"/>
    <img src="resources/images/inicio4.png" alt="Datos de diagnostico" width="200"/>
    <img src="resources/images/inicio5.png" alt="Mejorar entrada manuscrita" width="200"/>
    <img src="resources/images/inicio6.png" alt="Experiencia personalizada" width="200"/>
    <img src="resources/images/inicio7.png" alt="Publicidad personalizada" width="200"/>
</p>