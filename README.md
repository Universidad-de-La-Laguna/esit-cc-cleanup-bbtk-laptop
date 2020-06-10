# esit-cc-cleanup-bbtk-laptop

Script para la limpieza de portátiles de BBTK preparados para teletrabajo.

## Pre-requisitos

Para poder ejecutar el script, es necesario que la política de seguridad de Windows 10 lo permita. Esto se consigue con las siguientes instrucciones:



  1. Abrir una consola `Windows Powershell` como administrador.

  Para ello, escribir "powershell" en el cuadro de búsqueda de Windows y seleccionar `Ejecutar como administrador`. Saldrá una ventana indicando si se quieren permitir que se hagan cambios en el dispositivo, a la que hay que contestar que `Sí`.

![Abrir consola Powershell](/resources/images/powershell1.png)

  2. Habilitar la ejecución de scripts.

  Para ello, escribir la instrucción `Set-ExecutionPolicy Unrestricted` y pulsar *Enter*. Cuando pregunte si se *quiere cambiar la directiva de ejecución*, responder con una `S` y pulsar *Enter*.

![Cambiar directiva de ejecucion](/resources/images/powershell2.png)

Una vez hecho, ya se puede cerrar la ventana de la consola Powershell.

> NOTA: Esto solo hay que ejecutarlo una única vez en el equipo. Si hay que volver a ejecutar el script en el mismo equipo, la política ya estaría cambiada y se puede ejecutar directamente.

## Ejecución del script

*Pendiente escribir documentación de uso*