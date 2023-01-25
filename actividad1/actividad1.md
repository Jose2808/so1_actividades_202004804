[//]: <> (Tipos de Kernel y sus diferencias.)
[//]: <> (User vs Kernel Mode.)

# ACTIVIDAD 1

José Andrés Montenegro Santos\
202004804

## Tipos de Kernel y sus diferencias

Previo a definir los distintos tipos de Kernel, es prudente definir qué es el Kernel en sí.
Un Kernel es aquel sistema que actúa como intermediario entre el usuario y el hardware, a manera de poder hacer funcionar todas las aplicaciones que solicite un usuario (incluyendo el sistema operativo).
El Kernel además, cuenta con una estructura genérica que se aplica a todos los tipos de Kernel, esta es:

1. **Interfaz con el hardware:** Esta es la capa más baja o más profunda que posee el Kernel y realiza tareas como la de controlador de red o controlador de PCI express.

2. **Gestión de memoria:** Una capa más arriba de la Interfaz con el hardware nos encontramos en la Gestión de memoria, la cuál se encarga de distribuír la memoria RAM entre las funciones y aplicaciones que se estén usando.

3. **Gestor de dispositivos:** Esta capa se encarga de poder, tal y como dice su nombre, gestionar y administrar los distintos dispositivos que estén conectados al PC.

4. **Sistema de Archivos:** Finalmente, esta capa en la cual se le asigna un espacio en memoria a los distintos procesos que se están ejecutando.

Después de haber realizado la anterior introducción a lo que es el Kernel, entonces nos podemos adentrar más a los tipos de Kernel que existen, los cuales son 4 tipos:

1. **Kernel monolítico:** Este se caracteriza por ser un Kernel de gran tamaño y complejidad, hace años eran considerados como obsoletos e inservibles pero posteriormente se ha reconocido su importancia y sus mejoras frente a otros tipos de Kernel. Este Kernel es el único responsable de la gestión de la memoria y los procesos, la comunicación entre estos procesos y proporciona funciones de soporte de drivers y hardware. Además de esto, este tipo de Kernel incluye código para poder ser ejecutado en varios dispositivos, canales de interrupición y otras funciones, lo que provoca que cuando se desea hacer una modificació en el Kernel, se deba reiniciar el sistema.

2. **Microkernel:** Este Kernel, al contrario que el Kernel monolítico, se desarrollo de un tamaño pequeño con el objetivo de que cuando falle, si es que llega a fallar, no se paralice todo el sistema operativo. Es abiertamente reconocido como mejor que el Kermel mencionado anteriormente debido a que está conformando por una serie de abstracciones mucho más simples cuya función es la utilización de diversas aplicaciones para facilitar su funcionamiento.  Esta forma de funcionar ofrece beneficios con respecto a la portabilidad, seguridad y adaptación pero puede afectar al rendimiento.

3. **Kernel Híbrido:** Finalmente, cuando hablamos de un Kernel Híbrido, nos referímos a una combinacion de los dos tipos de Kernel anteriormente descritos, es decir, al microkernel se le aplican modificaciones grandes con el fin de permitir que el kernel híbrido se ejecute de una forma mucho más rápida y funcional.

4. **Exonúcleos:**



| Kernel Monolítico   | MicroKernel  | Kernel Híbrido | Exonúcleos     |
|---                  |---           |---             |---             |
|---                  |---           |---             |---             |
|---                  |---           |---             |---             |
|---                  |---           |---             |---             |
