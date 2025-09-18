# Descripción de las clases del negocio - NABU

_Origen: Confluence → Migración a Markdown_

# Modelo de entidades – NABU

A continuación se describen las entidades principales del sistema, sus características y relaciones.

---

## Persona
- **Tipo**: Clase abstracta.  
- **Descripción**: Agrupa a las subclases **Consejero** y **Autor**.  
- **Atributos**:  
  - Datos identificativos y de contacto.  
  - Atributo booleano para diferenciar civiles y militares.  

---

## Dirección
- Representa los **datos domiciliarios** de:
  - Persona.  
  - Suscriptores.  
- Usos:  
  - Dirección de envío de ejemplares.  
  - Dirección de contacto.  
  - Dirección de facturación.  

---

## Autor
- **Subclase** de `Persona`.  
- Identifica a las personas (militares o no) que envían artículos a la revista.  
- Asociaciones:  
  - Dirección.  
  - Cuenta Bancaria.  
  - Perfil Militar (cuando corresponda).  

---

## Consejero
- **Subclase** de `Persona`.  
- Identifica a las personas **militares** que realizan evaluaciones.  
- Asociaciones:  
  - Evaluación.  
  - Perfil Militar.  

---

## Perfil Militar
- Datos identificativos del personal militar:  
  - Cargo.  
  - Empleo.  
  - Tratamiento.  
  - CIU.  
  - Unidad de destino.  
  - Situación de servicio.  
  - Teléfono militar.  
  - Correo militar.  

---

## Artículo
- Representa los **artículos enviados** por los autores.  
- Características:  
  - Compuesto por documentos.  
  - Puede tener uno o más autores.  
- Relación:  
  - Con `Número Revista`, en caso de publicación.  

---

## Documento
- Archivos adjuntos que componen un artículo:  
  - Cuerpo.  
  - Imágenes.  
  - Otros anexos.  

---

## Evaluación
- Informes de valoración emitidos por un consejero.  
- Datos incluidos:  
  - Nota.  
  - Recomendación.  
- Relación:  
  - Asociada a cada artículo.  

---

## Suscripción
- Representa la suscripción a la revista (sin incluir datos del titular).  
- Asociaciones:  
  - Suscriptor.  
  - Dirección (envío de ejemplares físicos).  

---

## Suscriptor
- Titular de la suscripción (puede ser distinto del pagador).  
- Tipos posibles:  
  - Civil.  
  - Militar.  
  - Unidad militar.  
  - Empresa u organización.  
- Relación:  
  - Puede tener un `Perfil Militar` asociado.  

---

## Pagador
- Entidad responsable del pago de la suscripción (puede coincidir o no con el suscriptor).  
- Asociaciones:  
  - Cuenta Bancaria.  
  - Perfil Militar (si aplica).  

---

## Cuenta Bancaria
- Datos bancarios asociados a:  
  - Pagador.  
  - Autor (en caso de remuneración por publicación).  

---

## Número Revista
- Representa una **publicación concreta** de la revista, identificada con un número.  
- Asociaciones:  
  - Artículos publicados.  
  - Envíos relacionados.  

---

## Envío
- Representa el **número de ejemplares** de un `Número Revista` enviados a suscriptores.  
- Asociaciones:  
  - Suscriptor.  
  - Autor (ejemplar de cortesía).  
  - Etiqueta Envío.  

---

## Etiqueta Envío
- Datos incluidos en el **envío postal** de ejemplares de la revista.  
- Asociaciones:  
  - Envío.  
  - Número Revista.  
