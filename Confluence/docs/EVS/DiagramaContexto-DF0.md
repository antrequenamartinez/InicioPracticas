# Diagrama de Contexto - DF0 - NABU

_Origen: Confluence → Migración a Markdown_

Falta el diagrama de procesos, incluyendo la relación con dicodef

Se recogen los potenciales actores que podrían interactuar con el sistema y el flujo de información asociado.  

## Actores identificados

| Actor        | Descripción                                                   | Funciones principales                                                                 | Necesidades / Información gestionada                           |
|--------------|---------------------------------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------|
| **Editor**   | Interviene en el proceso de recepción de artículos propuestos | - Introducir documentos originales de artículos.<br>- Registrar y mantener autores y artículos relacionados.<br>- Mantener listado de consejeros para evaluación.<br>- Registrar evaluaciones recibidas y asignarlas a artículos.<br>- Asignar artículos aprobados a un número de revista. | - Datos de autores y artículos.<br>- Documentos originales y anexos.<br>- Evaluaciones de consejeros. |
| **Distribuidor** | Gestiona suscriptores y suscripciones asociadas           | - Alta/baja de suscriptores y suscripciones.<br>- Planificar y ejecutar envíos postales nacionales/internacionales.<br>- Introducir datos de suscriptores.<br>- Actualizar estados de suscripción según pagos.<br>- Generar etiquetas de envío. | - Datos de suscriptores.<br>- Estados de suscripciones.<br>- Etiquetas de envío. |
| **Dirección** | Coordina editores y distribuidores                           | - Coordinar el ciclo completo de edición.<br>- Consultar datos bancarios de autores y suscriptores.<br>- Generar certificados y facturas.<br>- Supervisar artículos publicados y autores asociados. | - Datos bancarios de autores y suscriptores.<br>- Información sobre suscripciones activas.<br>- Listado de artículos publicados. |
| **Consulta**  | Usuarios con acceso limitado                                 | - Consultar datos y documentos.<br>- Acceder a la información sin permisos de edición. | - Información de consulta (lectura). |
| **Administrador** | Gestiona usuarios y roles en el sistema                 | - Aprovisionar usuarios en el sistema.<br>- Autorizar acceso mediante credenciales **DICODEF**.<br>- Asignar roles: Editor, Distribuidor, Dirección, Consulta. | - Datos de usuarios y sus roles.<br>- Autorización DICODEF. |
