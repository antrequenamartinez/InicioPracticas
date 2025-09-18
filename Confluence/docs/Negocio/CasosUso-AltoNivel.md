# Diagramas de Casos de Uso de Alto Nivel y Actores (Del Negocio) - NABU

_Origen: Confluence → Migración a Markdown_

# Modelo de Casos de Uso — Identificación (NABU)

> Paso 9: Elaborar el modelo de casos de uso (identificación).  
> Se normaliza el formato a **CU.xx** y se corrige la referencia final (antes figuraba como HU.18 → **CU.18**).

---

## Tabla resumen

| Código | Título                                         | Rol/es                         | Objetivo / Valor                                                                 |
|-------:|------------------------------------------------|--------------------------------|----------------------------------------------------------------------------------|
| CU.01  | Alta de Autor                                  | Editor                         | Registrar autores con documentos y datos bancarios para gestionar sus artículos. |
| CU.02  | Alta de Artículo + documentos                  | Editor                         | Dar de alta artículos con autores y documentos para iniciar la revisión.         |
| CU.03  | Cambiar estados de artículo                    | Editor                         | Mantener la trazabilidad del ciclo de vida del artículo.                         |
| CU.04  | Clasificar artículo                            | Editor                         | Clasificar por tipo, temática y sección para búsqueda y maquetación.             |
| CU.05  | Alta de Consejero                              | Editor                         | Registrar consejeros militares para evaluar artículos.                           |
| CU.06  | Asignar consejero a artículo                   | Editor                         | Asignar consejeros a artículos para su evaluación.                               |
| CU.07  | Registrar evaluación                           | Editor                         | Registrar nota, recomendación e informe para decidir publicación.                |
| CU.08  | Alta/Baja de Revista                           | Editor                         | Crear (o dar de baja) números de revista para organizar la publicación.          |
| CU.09  | Asignar/Desasignar artículos a revista         | Editor                         | Preparar la publicación agrupando artículos en un número.                        |
| CU.10  | Cambiar estados de revista                     | Editor                         | Publicar un número para su paso a distribución.                                  |
| CU.11  | Consulta avanzada (art./aut./docs)             | Editor, Consulta               | Buscar y acceder a información avanzada de artículos, autores y documentos.      |
| CU.12  | Imprimir etiqueta de envío a autor             | Editor                         | Generar etiquetas para enviar ejemplares publicados a autores.                   |
| CU.13  | Alta de suscripción                            | Distribuidor                   | Registrar suscriptores y suscripciones para el envío de revistas.                |
| CU.14  | Gestionar pagador                              | Distribuidor                   | Registrar/editar el pagador de una suscripción para gestionar pagos.             |
| CU.15  | Modificar suscripción                          | Distribuidor                   | Actualizar estados y datos de suscripciones.                                     |
| CU.16  | Generar etiquetas de envío                     | Distribuidor                   | Generar etiquetas para la gestión de lotes de envío.                             |
| CU.17  | Exportar e imprimir etiquetas (PDF/XLS)        | Distribuidor                   | Exportar etiquetas para impresión o manipulación externa.                        |
| CU.18  | Consulta de suscriptores/suscripciones/direcciones | Distribuidor, Editor, Consulta | Verificar datos de suscriptores, suscripciones y direcciones.                    |

---

## Historias de usuario (formato estándar)

### CU.01 — Alta de Autor
**Como** Editor, **quiero** registrar autores con documentos y datos bancarios, **para** poder gestionar sus artículos.

### CU.02 — Alta de Artículo + documentos
**Como** Editor, **quiero** dar de alta artículos con autores y documentos, **para** iniciar el proceso de revisión.

### CU.03 — Cambiar estados de artículo
**Como** Editor, **quiero** cambiar el estado de un artículo en su ciclo de vida, **para** mantener la trazabilidad del proceso.

### CU.04 — Clasificar artículo
**Como** Editor, **quiero** clasificar artículos por tipo, temática y sección, **para** facilitar la búsqueda y la maquetación.

### CU.05 — Alta de Consejero
**Como** Editor, **quiero** registrar consejeros militares, **para** que puedan evaluar artículos.

### CU.06 — Asignación de Consejero a Artículo
**Como** Editor, **quiero** asignar consejeros a artículos, **para** que realicen evaluaciones.

### CU.07 — Registrar evaluación
**Como** Editor, **quiero** registrar evaluaciones con nota, recomendación e informe, **para** decidir si publicar.

### CU.08 — Alta/Baja de Revista
**Como** Editor, **quiero** crear números de revista, **para** organizar artículos publicados.

### CU.09 — Asignar/Desasignar Artículos a Revista
**Como** Editor, **quiero** asignar o quitar artículos a un número de revista, **para** preparar la publicación.

### CU.10 — Cambiar estados de revista
**Como** Editor, **quiero** publicar un número de revista, **para** que pase a distribución.

### CU.11 — Consulta avanzada de artículos/autores/documentos
**Como** Editor/Consulta, **quiero** realizar búsquedas avanzadas de artículos, autores y documentos, **para** acceder a información.

### CU.12 — Imprimir etiqueta de envío a Autor
**Como** Editor, **quiero** generar etiquetas de envío a autores, **para** enviar ejemplares publicados.

### CU.13 — Alta de Suscripción
**Como** Distribuidor, **quiero** registrar suscriptores y suscripciones, **para** enviar revistas.

### CU.14 — Gestionar Pagador
**Como** Distribuidor, **quiero** registrar o editar el pagador de una suscripción, **para** gestionar pagos.

### CU.15 — Modificar Suscripción
**Como** Distribuidor, **quiero** modificar estados y datos de suscripciones, **para** mantenerlas actualizadas.

### CU.16 — Generar Etiquetas de Envío
**Como** Distribuidor, **quiero** generar etiquetas de envío de revistas, **para** gestionar los lotes.

### CU.17 — Exportar e Imprimir Etiquetas
**Como** Distribuidor, **quiero** exportar etiquetas en PDF/XLS, **para** impresión o manipulación.

### CU.18 — Consulta de Suscriptores/Suscripciones/Direcciones
**Como** Distribuidor/Editor/Consulta, **quiero** consultar suscriptores, suscripciones y direcciones, **para** verificar datos.


# Roles y responsabilidades — NABU

Se describen los actores principales del sistema, sus funciones y el alcance de su interacción.

---

## Editor
**Descripción**: Relacionado con los artículos, autores, consejeros y la confección de la propuesta de composición de la revista.  

**Funciones**:
- Dar de alta autores y artículos, con sus datos asociados.  
- Gestionar los consejeros dados de alta, manteniendo actualizados sus datos.  
- Asignar consejeros a los artículos recibidos para su evaluación.  
- Introducir en el sistema las notas y recomendaciones de las evaluaciones.  
- Generar propuestas de composición de números de revista según artículos y evaluaciones.  
- Generar etiquetas de envío de ejemplares de cortesía para autores con artículos publicados.  

---

## Distribuidor
**Descripción**: Encargado de la gestión de suscriptores, suscripciones y envíos postales de ejemplares físicos.  

**Funciones**:
- Volcar en el sistema los datos de suscriptores particulares o institucionales (datos personales, domicilio, bancarios).  
- Gestionar el estado de las suscripciones (altas, bajas, forma de pago, dirección de entrega).  
- Generar etiquetas de envío postal de ejemplares físicos según el tipo de suscripción.  

---

## Dirección (Consulta)
**Descripción**: Coordina las áreas de distribución y edición.  

**Funciones**:
- Acceder a los datos personales y bancarios de autores y suscriptores.  
- Supervisar la facturación económica de suscriptores y los pagos a autores publicados.  

---

## Entidades de negocio sin acceso

### Autor
- Envía artículos propuestos a la revista, aportando documentación en el formato solicitado.  
- El sistema almacena:  
  - Datos personales.  
  - Datos de contacto.  
  - Datos de facturación.  
  - Documentación solicitada (DNI, CV, etc.).  

### Consejero
- Recibe del Editor los artículos a evaluar.  
- Realiza un informe con:  
  - Nota.  
  - Recomendación.  
- El Editor registra este informe en el sistema.  
