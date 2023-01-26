[//]: <> (Tipos de Kernel y sus diferencias.)
[//]: <> (User vs Kernel Mode.)

# ACTIVIDAD 1

José Andrés Montenegro Santos\
202004804

## Tipos de Kernel y sus diferencias

1. **Kernel monolítico:** Este se caracteriza por ser un Kernel de gran tamaño y complejidad, hace años eran considerados como obsoletos e inservibles pero posteriormente se ha reconocido su importancia y sus mejoras frente a otros tipos de Kernel. Este Kernel es el único responsable de la gestión de la memoria y los procesos, la comunicación entre estos procesos y proporciona funciones de soporte de drivers y hardware. Además de esto, este tipo de Kernel incluye código para poder ser ejecutado en varios dispositivos, canales de interrupición y otras funciones, lo que provoca que cuando se desea hacer una modificació en el Kernel, se deba reiniciar el sistema.

2. **Microkernel:** Este Kernel, al contrario que el Kernel monolítico, se desarrollo de un tamaño pequeño con el objetivo de que cuando falle, si es que llega a fallar, no se paralice todo el sistema operativo. Es abiertamente reconocido como mejor que el Kermel mencionado anteriormente debido a que está conformando por una serie de abstracciones mucho más simples cuya función es la utilización de diversas aplicaciones para facilitar su funcionamiento.  Esta forma de funcionar ofrece beneficios con respecto a la portabilidad, seguridad y adaptación pero puede afectar al rendimiento.

3. **Kernel Híbrido:** Cuando hablamos de un Kernel Híbrido, nos referímos a una combinacion de los dos tipos de Kernel anteriormente descritos, es decir, al microkernel se le aplican modificaciones grandes con el fin de permitir que el kernel híbrido se ejecute de una forma mucho más rápida y funcional, además de esto se le pueden añadir controladores de dispositivos y extensiones al sistema operativo (módulos) mientras el sistema continúa funcionando.

4. **Exonúcleos:** Este tipo de Kernel es extremandamente pequeño, y limitan sus funciones a la protección y multiplexado de los recursos de la computadora. Este nombre se les da porque toda las funciones (exceptuando las anteriormente mencionadas) ya no se encuentran dentro de la memoria sino que pasan a estar afuera, en las denominadas "librerías dinámicas". Otra ventaja es que permite al desarrollador tomar decisiones importantes con respecto al rendimiento del sistema.

| Kernel Monolítico   | MicroKernel  | Kernel Híbrido | Exonúcleos     |
|---                  |---           |---             |---             |
| * Gran tamaño y complejidad| * Pequeños en tamaño| * Combinación del Monolítico y Microkernel| * Extremadamente pequeño|
| * Contiene todos los servicios del sistema| * Menos complejos| * Tienen código extra que mejora el rendimiento|Permite al desarrollador tomar decisiones sobre el rendimiento|
| * Algún cambio requiere la recompilación del Kermel| * Sus funciones son añadidas desde módulos externos| * A diferencia del monolítico, se puede agregar funciones mientras está en funcionamiento|Tiene sus funciones en librerías dinámicas afuera de la memoria|
| * Todas las funciones están dentro de un solo programa| * Peor rendimiento que el monolítico|               |             |
| * Por un error se puede detener todo el sistema| * Cuando ocurre un fallo no necesariamente se cae el sistema|             |             |

## User Mode vs Kernel Mode

### ¿Qué es User Mode?

Este modo ocurre cuando, por ejemplo, se está corriendo una computadora normalmente y se está usando una aplicación convencional como lo podría ser Word, PDF o algún navegador de internet. Cuando se está en este modo, si alguna de las aplicaciones que está funcionando necesita algún recurso de hardware, esta envía una petición al kernel y el kernel le responde a esta solicitud.
Cuando se está en este modo, como se tiene un limitado acceso al hardware, también se puede conocer como modo esclavo o modo restringido.
También, cuando se está en este modo, cada uno de los procesos que se está llevando a cabo tiene su propio espacio de direcciones y no puede acceder a la dirección que está destinada para el kernel. Lo que conlleva que si ocurre algún fallo en un proceso, este no afectará al sistema operativo.

### ¿Qué es Kernel Mode?

El Kermel Mode es un modo reservado solamente para funciones de bajo nivel del sistema operativo.
Para poder describir este modo se tiene que recordar lo que se mencionó anteriormente acerca de que sucede cuando un programa necesita algún recurso de hardware. El programa realiza la solicitud al kernel para algún recurso de hardware y el kernel le responde. El Kernel Mode es usado durante el transcurso de este procedimiento, cuando el programa realiza una "llamada al sistema" realizando una solicitud al kernel, la computadora entra en el Kernel Mode desde el User Mode, cuando se completa la tarea entonces el modo cambia nuevamente a User Mode, esto se conoce como "cambio de contexto". En este caso, los procesos tiene un solo espacio de direcciones por lo cual si alguno falla lo más probable es que todo el sistema falle.

| User Mode   | Kernel Mode  |
|---                  |---           |
| * Cuando ocurre algun fallo o interrupción, solamente se detiene un proceso y no todo el sistema| * Si ocurre algun fallo o interrupción, es muy probable que todo el sistema falle|
| * Se conoce también como modo esclavo| * Se conoce como modo de sistema, modo privilegiado o modo maestro.|
| * Es un modo restringido, donde los programas de aplicación se ejecutan| * Es un modo privilegiado, solamente lo accede la computadora al acceder a recursos de hardware|
| * En este modo, cada proceso tiene su propio espacio de direcciones| * Todos los procesos tienen un solo espacio de direcciones|
