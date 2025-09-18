# Estudio de Alternativas - Proyecto - NABU

_Origen: Confluence → Migración a Markdown_

```markdown
# Alternativas de sistemas en uso y opciones evaluadas — NABU

## Aplicaciones en uso (otras unidades)
La **Subdirección General de Publicaciones y Patrimonio Cultural** utiliza actualmente el software de la empresa **AGC**, destinado a:  
- Gestión de altas y bajas de suscriptores de distintas revistas.  
- Obtención de albaranes de envíos de ejemplares.  
- Generación de etiquetas de envío.  

El personal de la Sección de Publicaciones de la **SUBAT** tiene acceso a este software, aunque **no se ajusta a las necesidades específicas de la Revista Ejército**.

---

## Alternativas comerciales y open source

### Alternativa comercial: **Edisoft**
- Contactada en la **ITV realizada por SEATTD (julio 2024)**.  
- Respuesta: **su software no cubre los requisitos solicitados**.  

---

### Alternativa comercial: **MagHub**
Plataforma SaaS orientada a medios profesionales, especializada en gestión de editoriales y revistas.  

**Licencia**: Propietaria, modelo SaaS (cloud).  
**Costes**:
- Licencia: \$500–1.000/mes (según nº de usuarios).  
- Consultoría e implantación inicial de pago.  
- Costes adicionales por módulos (ej. publicidad).  
**Tiempo de despliegue**: 1–2 meses (dependiendo de migración de datos).  

**Usabilidad**:  
- Interfaz moderna, baja curva de aprendizaje.  
- Diseñada para equipos editoriales.  

**Funcionalidades**:
- Gestión de suscripciones y distribución.  
- CRM integrado (clientes y anunciantes).  
- Facturación y pagos online.  
- Módulos de publicidad, inventario e informes avanzados.  

**Contras**:
- Alto coste.  
- Orientada a medios comerciales, no institucionales.  
- Dependencia de un único proveedor.  

**Riesgos**:
- R1: Subida de precios → *Probable / Impacto Alto*.  
- R2: Dependencia tecnológica SaaS → *Posible / Impacto Alto*.  
- R3: Desajuste con necesidades específicas → *Posible / Impacto Moderado*.  

---

### Alternativa open-source: **OJS (Open Journal Systems)**
Plataforma **open source (GPL v2)** usada en gestión de revistas científicas y académicas.  

**Costes**:
- Sin coste de licencia.  
- Hosting propio: 50–150 €/mes.  
- Soporte opcional de terceros (ej. PKP Publishing Services).  
**Tiempo de despliegue**: 1–3 meses con equipo técnico básico.  

**Usabilidad**:
- Interfaz sencilla, menos moderna.  
- Curva de aprendizaje media.  

**Funcionalidades**:
- Flujo editorial completo (envío, revisión, publicación online).  
- Gestión de usuarios (autores, revisores, editores).  
- Indexación automática (DOI, CrossRef).  
- Plugins para métricas y estadísticas.  

**Contras**:
- Limitado para distribución física.  
- Interfaz poco adaptable sin personalización.  
- Requiere soporte técnico para personalización.  

**Riesgos**:
- R1: Dependencia de la comunidad → *Posible / Impacto Moderado*.  
- R2: Coste en personalizaciones → *Probable / Impacto Alto*.  
- R3: Falta de soporte oficial → *Posible / Impacto Moderado*.  

---

## Desarrollo a medida (SEATTD)

### Metodología
- Desarrollo completo mediante **Scrum**.  
- Iteraciones con demostradores funcionales para evaluación.  
- Implantación final tras aprobación del cliente.  

### Arquitectura y tecnología
- **Back-End**: API en Java (Spring), alojada en servidor de CESTIC.  
- **Datos**: base de datos relacional en servidor de CESTIC.  
- **Front-End**: web con Angular.  

### Estimación
- **Carga de trabajo**: 2 desarrolladores hasta versión funcional en preproducción.  
- **Tiempo**:
  - 2 semanas: estudio de viabilidad.  
  - 2 semanas: especificación de requisitos.  
  - 2 semanas: desarrollo (2 sprints).  
  - 2 semanas: implantación y pruebas.  
  - **Total: 8 semanas**.  

### Valoración económica
- **Pago único por desarrollo**: 11.400 €*.  
- **Pago recurrente**:
  - Mantenimiento software: 400 €/año* (4 jornadas).  
  - Mantenimiento servidores: 50 €/mes**.  

\* Costes estimados con honorarios de desarrolladores militares/civiles y analistas SECAPROTEC.  
\** Costes estimados de servidores CESTIC y CGE en preproducción.  

### Riesgos
- R1: Disponibilidad de la red corporativa → *Posible / Impacto Alto*.  
- R2: Dependencia de un equipo reducido → *Posible / Impacto Alto*.  
- R3: Riesgo de deuda técnica si no se planifica bien la arquitectura → *Posible / Impacto Moderado*.  

### Licenciamiento
- **Licencias de aplicaciones**: no necesarias.  
- **Código**: propietario de la organización.  
```

¿Quieres que convierta la parte de **riesgos** en una **tabla comparativa por alternativa** (MagHub, OJS, Desarrollo a medida) para que quede visual y homogénea en el documento?
