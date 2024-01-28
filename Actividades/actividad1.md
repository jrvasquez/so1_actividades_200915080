# KERNEL

El kernel es el núcleo del sistema operativo, supervisa la organización de procesos y datos en segundo plano. Sin él, prácticamente nada funciona. Se podría definir como un programa que controla todos los accesos al procesador y a la memoria, es responsable de los drivers o controladores más importantes y puede acceder directamente al hardware. Es el corazón de un sistema operativo y actúa como interfaz entre el software y el hardware, gestionando los recursos de manera eficiente.

El kernel se encuentra en el centro del sistema operativo, controlando todas las funciones importantes del hardware en sistemas como Linux, MacOS, Windows, smartphones, servidores, virtualizaciones, o cualquier tipo de ordenador.

## Tipos de Kernel

### Núcleos Monolíticos (Kernel Monolítico)

Estos sistemas tienen un núcleo grande y complejo que abarca todos los servicios del sistema. Está programado de forma no modular, con un rendimiento mayor que un micronúcleo. Sin embargo, cualquier cambio requiere la recompilación del núcleo y el reinicio del sistema.

Un sistema operativo con núcleo monolítico concentra todas las funcionalidades posibles dentro de un gran programa, siendo necesario recompilarlo por completo al añadir una nueva funcionalidad.

### Micro-núcleos (Microkernel)

Son núcleos de pequeño tamaño compilados solo con las necesidades básicas del sistema operativo. El resto de funcionalidades se añaden mediante módulos externos al núcleo, proporcionando flexibilidad y facilidad de ampliación. Son más seguros que los monolíticos.

### Núcleo Híbrido

Es una arquitectura que combina elementos de microkernel y núcleo monolítico, utilizada en sistemas operativos.

## User vs Kernel Mode

Modo de usuario y modo kernel son dos niveles de privilegio distintos en el sistema operativo que determinan el nivel de acceso y control que un programa o proceso tiene sobre los recursos del sistema, ayudando a mantener la seguridad y estabilidad del sistema operativo.

## Interruptions vs Traps

Interruptions y Traps son términos relacionados con la administración y manejo de eventos en sistemas computacionales, especialmente en sistemas operativos.

- **Interruptions:** Eventos externos que provienen de hardware o fuentes externas al procesador, como señales de dispositivos de entrada/salida indicando operaciones completadas o que necesitan atención.

- **Traps:** Eventos generados internamente por el programa en ejecución, surgidos por condiciones excepcionales como división por cero o ejecución de instrucciones no válidas.

