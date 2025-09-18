# Alcance del Proyecto - NABU

_Origen: Confluence → Migración a Markdown_

# NABU — Documento de referencia (resumen limpio)

## Referencias normativas

- **Normas de Edición y Publicación en el Ministerio de Defensa**. Área de Publicaciones. Subdirección General de Publicaciones y Patrimonio Cultural, 2024.  
  Detalla en el **apartado 4.1** el procedimiento de presentación del manuscrito original y el procedimiento de evaluación.

- **Norma General 14/13. Organización y funcionamiento de la Revista Ejército**. Estado Mayor del Ejército, 2013.  
  En el **apartado 6** define la organización de la Sección de Publicaciones y en el **apartado 7** el funcionamiento interno (Redacción, Edición y Distribución).

- **Ley Orgánica 3/2018, de 5 de diciembre**, de Protección de Datos Personales y garantía de los derechos digitales (BOE nº 294, 06/12/2018).  
  Establece obligaciones sobre el objeto del tratamiento y los derechos **ARSULIPO** (Acceso, Rectificación, Supresión, Limitación, Portabilidad y Oposición).

- **Normas de colaboración de la Revista Ejército**.  
  En el **apartado 9** especifica formatos de textos y gráficos enviados a la revista.

- **Orden DEF/1036/2011, de 14 de abril**, por la que se crean ficheros de datos de carácter personal en el ámbito del Ejército de Tierra (BOE nº 100, 27/04/2011).  
  En el **apartado 4** recoge la creación del fichero de datos personales de Colaboradores y Suscriptores de la Revista Ejército.

---

## Introducción

Documento redactado según el estándar **IEEE 830**, que presenta las características necesarias para la especificación de requisitos.

### Propósito

- Exponer la información obtenida en el análisis: funcionamiento actual del negocio y objetivos del futuro software.  
- Presentar condicionantes del desarrollo, posibles restricciones y un catálogo de requisitos del producto.  
- Someter el documento a **aprobación del responsable funcional**.  
- Especificar a quién va dirigido.

---

## Descripción general

### Consideraciones iniciales

- La **Sección de Publicaciones (SUBAT / JCISAT)** gestiona la **Revista Ejército** (editorial y administrativa).  
- El ciclo editorial, la gestión de suscripciones y la distribución de ejemplares físicos se realizan actualmente con **Lotus Notes**.  
- La revista es **bimestral** y existe un sistema de **suscripción anual** al formato físico.  
- Debido al fin de vida de Lotus Notes y al plan de migración de **CESTIC**, se requiere una nueva solución software que permita:
  - Registrar y tratar artículos, con su **proceso de selección y evaluación**.
  - Gestionar **suscriptores y suscripciones** para la distribución de ejemplares físicos.

---

## Normativa de referencia

> Ver el apartado **Referencias normativas**.

---

## Alcance del sistema

### Sistema actual (Lotus Notes)

- Gestión editorial de la Revista Ejército.  
- Coordinación administrativa de **suscripciones, distribución y ventas**.  
- Supervisión técnica de **edición y publicación**.  
- Control de **calidad de contenidos**.  
- Relaciones con **colaboradores y autores**.

> **Fuera de alcance actual:** La **gestión económica y facturación** se realiza con un sistema externo.

### Sistema propuesto — El sistema permitirá

- **Autores y artículos**: registro de autores y sus datos; almacenamiento de **documentos originales**; evaluación por **consejeros externos**.  
- **Consejeros**: registro de consejeros, con informes de evaluación que incluyan **nota** y **recomendación** por artículo.  
- **Suscripciones**: gestión de **suscriptores y suscripciones** (datos personales, de contacto y **bancarios**) para configurar **envíos físicos**.  
- **Etiquetas de envío**: generación de etiquetas postales para **ejemplares de suscripción** y **ejemplares de cortesía** a autores publicados.

### Fuera de alcance (no cubrirá)

- Emisión de **facturas**, certificados de pago o cualquier **gestión económica** (se mantiene en sistema externo).  
- Emisión de **informes** o **exportaciones** de datos en otros formatos distintos a los previstos.  
- **Migración** de bases de datos externas o de otras fuentes (más allá de lo explicitado).  
- Acceso a **personal externo** a MINISDEF o a la Sección de Publicaciones de la SUBAT.

> Objetivo general: **centralizar** la gestión editorial y de suscripciones de la Revista Ejército, optimizando actividades y control de entidades de negocio.

---

## Funciones del producto

### Gestión editorial

- Alta de **autores** y **artículos**.  
- Gestión del ciclo de **recepción → evaluación → aprobación**.  
- Registro de **consejeros** y de sus **informes** (nota y recomendación).

### Gestión de suscripciones

- Altas/bajas de **suscriptores** (particulares, empresariales u organizacionales).  
- Gestión de **datos de contacto, dirección y bancarios** (facturación externa).  
- Generación de **etiquetas de envío** para suscriptores y para **cortesía** a autores.

---

## Contexto del sistema

- Acceso mediante **navegador web** desde equipos de **Red de Propósito General (WAN-PG)**, con credenciales **DICODEF**.  
- Esquema de **roles** para restringir el acceso a datos según el puesto.  
- **No** se permitirá acceso a usuarios externos al **MINISDEF**.

---

## Estructura de la organización

- Según **Norma General 14/13**, la Sección de Publicaciones define la composición orgánica y responsabilidades aplicables al proceso editorial.

---

## Catálogo de usuarios

- **Editor**: relaciones con colaboradores y autores; recepción de artículos.  
- **Distribuidor**: gestión de suscripciones y **distribución física**.  
- **Dirección**: supervisión general y gestión económica (en sistema externo).

> Perfil: usuarios con **nivel medio** de competencias informáticas.  
> Volumen previsto: **< 10** usuarios.

---

## Restricciones

- **Entorno**: despliegue en **preproducción** en servidores **JCISAT** y en **I3D (CESTIC)** para **producción**.  
- **Legislación**: cumplimiento de **LO 3/2018** por tratamiento de **datos personales y bancarios**.

---

## Suposiciones y dependencias

- Posible **migración** futura de la BBDD actual de Lotus Notes a la nueva BBDD.  
- Capacidad de almacenamiento del sistema actual: **65 GB** → preferible ampliar a **200 GB**.

---

## Condicionantes del proyecto

- **Alcance organizativo**: uso por la **Sección de Publicaciones de la SUBAT**.  
- **Usuarios potenciales**: **< 10**.  
- **Terminales cliente**: **1**.  
- **Tiempo estimado**: **2 meses**.

---

## Definiciones, acrónimos y abreviaturas

Consultar el documento **Glosario y Acrónimos** para términos, siglas y abreviaturas empleados.
