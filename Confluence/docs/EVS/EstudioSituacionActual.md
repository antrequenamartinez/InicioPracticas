# Estudio de la situación actual - NABU

_Origen: Confluence → Migración a Markdown_

# Sistema de información actual – NABU

## Actores identificados
Los actores que interactúan con el sistema se detallan en una sección específica.

---

## Relaciones con otros sistemas
- La entrada de información se introduce manualmente mediante formularios.  
- Los artículos se reciben por **correo electrónico** desde la página web de la revista.  
- Las solicitudes de suscripción también se reciben vía correo.  
- **No existe conexión con otros sistemas de información.**

---

## Diagnóstico de la situación actual

### Diagramas de procesos identificados
- No se dispone de información sobre procedimientos o normas internas que regulen la gestión de la revista, más allá de lo publicado en la página web oficial.  
- El proceso de selección y evaluación de artículos está descrito de forma general en el **apartado 4.1 de las Normas de Edición y Publicación del Ministerio de Defensa**.

---

## Descripción del proceso actual

1. Los artículos originales y documentos anexos se envían por **correo electrónico** a la Revista Ejército.  
2. El **departamento de Redacción** los recibe y da de alta en el sistema, junto con los datos de los autores.  
3. Se designan **dos consejeros por artículo**, de acuerdo con áreas de conocimiento.  
4. El artículo se anonimiza y se remite a los consejeros por correo electrónico.  
5. Los consejeros envían un **informe de evaluación** con:
   - Nota de 1 a 6.  
   - Recomendación: *No debe / Puede / Debe publicar*.  
6. El contenido e informe se registran manualmente en el sistema mediante formulario.  
7. Una vez evaluados todos los artículos, se realiza la **selección previa** de los que integrarán el siguiente número de la revista, en función de:
   - Temática.  
   - Tipo de artículo.  
   - Área o sección fija de la revista.  
8. Se asigna a los artículos seleccionados el número de revista correspondiente y se notifica a los autores.  
9. La publicación de un artículo implica:
   - **Remuneración económica**.  
   - **Envío de un ejemplar de cortesía** a los autores.  
10. Las **suscripciones** y **suscriptores** se registran manualmente mediante formularios con los datos enviados por los interesados.  
11. El sistema mantiene información de los suscriptores:
    - Datos personales, de contacto y bancarios.  
    - Suscriptores pueden ser particulares, unidades militares, empresas, etc.  
12. Se generan etiquetas de envío postal según:
    - Número de suscripciones activas y al corriente de pago.  
    - Tipo de envío: nacional o internacional.  
13. La **gestión de facturación** a suscriptores y de **pagos a autores** se realiza en un **sistema externo**, sin integración automática. Los datos bancarios se consultan y trasladan manualmente.

---

## Diagnóstico del proceso actual

El sistema es funcional y adaptado a los procedimientos vigentes, pero presenta áreas de mejora:

- **Entidad Revista**: no existe como tal; el número de revista se guarda como un campo dentro del artículo. Esto obliga a filtrar artículos por ese campo para identificar los que integran una revista concreta.  
- **Datos de unidades militares**: se consultan en la WAN-PG y se introducen manualmente. Podría mejorarse con una tabla en la BBDD, importando un `.csv` y mostrando los datos en el frontend como desplegable/selector.  
- **Gestión de documentos**: los ficheros se adjuntan únicamente en los formularios, sin un índice general para consulta/descarga.  
- **Validaciones**: no existen controles sobre los datos introducidos, permitiendo campos en blanco o formatos incorrectos.
