#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
DOCS="$ROOT/docs"
ASSETS="$ROOT/assets"

mkdir -p "$DOCS" "$ASSETS"

write_md () {
  local path="$1"
  local title="$2"
  if [[ ! -f "$path" ]]; then
    printf "# %s\n\n_Origen: Confluence → Migración a Markdown_\n\n" "$title" > "$path"
  fi
}

# README
cat > "$ROOT/README.md" <<'EOF'
# Documentación del Proyecto – NABU

Esta es la migración desde Confluence a Markdown (Git).  
Estructura principal en `docs/` y recursos en `assets/`.

## Convenciones
- Una página de Confluence = un `.md`.
- Diagramas e imágenes en `assets/` (enlazar desde los `.md`).
- Mantener títulos claros y numeración cuando aplique.

## Estructura (alto nivel)
- `docs/EVS/…`
- `docs/Requisitos/…`
- `docs/CasosUso/…`
- `docs/ModeloDominio/…`
- `docs/Especificacion/…`
- `docs/UI/…`
- `docs/Retrospectiva/…`
- `docs/PlanesManuales/…`
- `docs/ArchivosRecursos/…`
- `docs/Autogenerados/…`
- `docs/MinutasAgenda.md`
- `docs/GlosarioAcronimos.md`
EOF

# ====== EVS ======
mkdir -p "$DOCS/EVS"
write_md "$DOCS/EVS/EVS-NABU.md" "EVS - NABU"
write_md "$DOCS/EVS/AlcanceProyecto.md" "Alcance del Proyecto - NABU"
write_md "$DOCS/EVS/DiagramaContexto-DF0.md" "Diagrama de Contexto - DF0 - NABU"
write_md "$DOCS/EVS/EstudioSituacionActual.md" "Estudio de la situación actual - NABU"
write_md "$DOCS/EVS/SI-Actual.md" "Sistema de información actual - NABU"

# ====== Negocio / Alto Nivel ======
mkdir -p "$DOCS/Negocio"
write_md "$DOCS/Negocio/ModeloDominio-AltoNivel.md" "Modelos de dominio de Alto Nivel (Del Negocio) - NABU"
write_md "$DOCS/Negocio/ClasesNegocio.md" "Descripción de las clases del negocio - NABU"
write_md "$DOCS/Negocio/ModeloProcesos.md" "Modelo de Procesos del Negocio - NABU"
write_md "$DOCS/Negocio/CasosUso-AltoNivel.md" "Diagramas de Casos de Uso de Alto Nivel y Actores (Del Negocio) - NABU"
write_md "$DOCS/Negocio/Actores-DescripcionFuncionesNecesidades.md" "Actores, descripción, funciones y necesidades - NABU"

# ====== Estudio de alternativas ======
mkdir -p "$DOCS/Alternativas"
write_md "$DOCS/Alternativas/EstudioAlternativas.md" "Estudio de Alternativas - Proyecto - NABU"
write_md "$DOCS/Alternativas/MatrizRequisitos-Alternativas.md" "Matriz de cumplimiento de Requisitos-Alternativas - NABU"
write_md "$DOCS/Alternativas/EvaluacionRiesgos.md" "Evaluación de Riesgos - NABU"
write_md "$DOCS/Alternativas/MatrizDecision.md" "Matriz de decisión - NABU"
write_md "$DOCS/Alternativas/ActaEVS-DecisionDesarrollo.md" "Acta reunión EVS - Decisión desarrollo acordada - NABU"
write_md "$DOCS/Alternativas/PlanificacionGeneral-MVP.md" "Planificación General del proyecto y MVP - NABU"

# ====== Requisitos ======
mkdir -p "$DOCS/Requisitos/RF"
write_md "$DOCS/Requisitos/CatalogoRequisitos.md" "Catálogo de Requisitos - NABU"
rf_list=(
  "RF.001 - Alta/edición de Autor y sus documentos asociados"
  "RF.002 - Alta de Articulo con Autor/es y Documentos asociados"
  "RF.003 - Alta de Consejero y asignación a Artículo"
  "RF.004 - Registro de evaluaciones por Artículo y adjuntar el documento del informe."
  "RF.005 - Clasificación del artículo (tipo/temática/sección)"
  "RF.006 - Propuesta de Número de Revista con control de Artículos"
  "RF.007 - Cierre del Número de Revista y bloqueo de edición"
  "RF.008 - Consulta avanzada con filtros y descargas"
  "RF.009 - Alta de Suscripción con Suscriptor"
  "RF.010 - Gestión de Pagador de la Suscripción."
  "RF.011 - Gestión de Suscripción (estado, forma de pago)"
  "RF.012 - Generar Etiquetas de envío por Número PUBLICADO"
  "RF.013 - Exportación de etiquetas PDF/XLS"
)
i=1
for item in "${rf_list[@]}"; do
  num=$(printf "%03d" $i)
  file="$DOCS/Requisitos/RF/RF.$num.md"
  write_md "$file" "$item"
  ((i++))
done

# ====== Casos de Uso ======
mkdir -p "$DOCS/CasosUso"
cu_list=(
  "CU.01 - Alta de Autor"
  "CU.02 - Alta de Articulo + subida de documentos"
  "CU.03 - Cambiar estados de artículo"
  "CU.04 - Clasificar artículo por tipo, temática y sección."
  "CU.05 - Alta de Consejero"
  "CU.06 - Asignación de Consejero a Artículo"
  "CU.07 - Registrar Evaluación (nota y recomendación) con su informe."
  "CU.08 - Alta de Revista"
  "CU.09 - Asignar y desasignar Artículos a Revista"
  "CU.10 - Cambiar Estados a Revista"
  "CU.11 - Consulta avanzada de artículos/autores/documentos"
  "CU.12 - Imprimir etiqueta de envío de ejemplar de Revista a Autor"
  "CU.13 - Alta de Suscriptor"
  "CU.14 - Gestionar Pagador"
  "CU.15 - Modificar Suscripción"
  "CU.16 - Generar Etiquetas de Envío"
  "CU.17 - Exportar e imprimir Etiquetas"
  "CU.18 - Consulta de Suscriptores/Suscripciones/Direcciones."
  "CU.19 - Asignar roles y permisos a usuarios"
)
for item in "${cu_list[@]}"; do
  code="${item%% *}" # CU.XX
  name="${item#* - }"
  file="$DOCS/CasosUso/${code//./_}.md"
  write_md "$file" "$item"
done

write_md "$DOCS/CasosUso/Matriz-Requisitos-CasosUso.md" "Matriz de cumplimiento de Requisitos-Casos de Uso - NABU"

# ====== Modelo de Dominio ======
mkdir -p "$DOCS/ModeloDominio"
write_md "$DOCS/ModeloDominio/Modelo-Subsistemas-Clases.md" "Modelo de Dominio - Subsistemas y Clases de Diseño - NABU"
entities=(
  Articulo ArticuloAutor Autor Consejero CuentaBancaria Direccion Documento
  EstadoArticulo EstadoNumero EstadoSuscripcion EtiquetaEnvio Evaluacion FormaPago
  NumeroRevista Pagador PerfilMilitar Persona Recomendacion Suscripcion Suscriptor
  TipoDocumento TipoSuscriptor
)
for e in "${entities[@]}"; do
  write_md "$DOCS/ModeloDominio/${e}.md" "$e"
done

# ====== Especificación / Servicios ======
mkdir -p "$DOCS/Especificacion/Back" "$DOCS/Especificacion/Ejemplos"
write_md "$DOCS/Especificacion/EspecificacionTareas.md" "Especificación de tareas - NABU"
write_md "$DOCS/Especificacion/Back/Servicios-API-REST.md" "Especificación de Servicios BACK (API-REST) - NABU"
write_md "$DOCS/Especificacion/Ejemplos/EJEMPLO-API-FICHA.md" "EJEMPLO-API-FICHA"
write_md "$DOCS/Especificacion/Ejemplos/EJEMPLO-MENSAJE-FICHA.md" "EJEMPLO-MENSAJE-FICHA"
write_md "$DOCS/Especificacion/Ejemplos/EJEMPLO-REST-FICHA.md" "EJEMPLO-REST-FICHA"

# ====== UI (Vistas) ======
mkdir -p "$DOCS/UI"
ui_pages=(
  "C001-VISTA-Articulos"
  "C002-VISTA-NuevoArticuloAutor"
  "C003-VISTA-EditarArticulo"
  "C004-VISTA-DetalleArticulo"
  "C006-VISTA-DetalleAutor"
  "C009-VISTA-Evaluacion"
  "C009-VISTA-NumeroRevista"
  "C010-VISTA-AltaEdicionNumeroRevista"
  "C011-VISTA-DetalleNumeroRevista"
  "D005-VISTA-Etiqueta"
  "E001-VISTA-MenuLateral"
  "EJEMPLO-VISTA-FICHA"
)
for p in "${ui_pages[@]}"; do
  write_md "$DOCS/UI/$p.md" "$p"
done
write_md "$DOCS/Retrospectiva.md" "Retrospectiva - Sprints - NABU"
mkdir -p "$DOCS/Retrospectiva"
write_md "$DOCS/Retrospectiva/Sprint-1.md" "Sprint 1 - NABU"

# ====== Planes y Manuales ======
mkdir -p "$DOCS/PlanesManuales"
write_md "$DOCS/PlanesManuales/ManualesUsuario.md" "Manuales de Usuario - NABU"
write_md "$DOCS/PlanesManuales/PlanImplantacion.md" "Plan de Implantación - NABU"
write_md "$DOCS/PlanesManuales/PlanPruebasAceptacion.md" "Plan de Pruebas de Aceptación - NABU"
write_md "$DOCS/PlanesManuales/EJEMPLO-X-CUP-FICHA.md" "EJEMPLO-X-CUP-FICHA"

# ====== Archivos y Recursos ======
mkdir -p "$DOCS/ArchivosRecursos/00_PeticionInicial" \
         "$DOCS/ArchivosRecursos/10_DocumentacionAdministrativa" \
         "$DOCS/ArchivosRecursos/20_DocumentacionTecnica" \
         "$DOCS/ArchivosRecursos/30_Mensajeria" \
         "$DOCS/ArchivosRecursos/40_Referencias"
write_md "$DOCS/ArchivosRecursos/README.md" "Q:/ Archivos y recursos - NABU"

# ====== Autogenerados / ITV ======
mkdir -p "$DOCS/Autogenerados"
write_md "$DOCS/Autogenerados/ITV.md" "ITV - NABU"

# ====== Minutas & Glosario ======
write_md "$DOCS/MinutasAgenda.md" "Minuta de Reuniones y Agenda - NABU"
write_md "$DOCS/GlosarioAcronimos.md" "Glosario y Acronimos - NABU"

# ====== .gitignore ======
cat > "$ROOT/.gitignore" <<'EOF'
# Artefactos locales
.DS_Store
Thumbs.db
*.tmp
~$*
# Exportaciones
/export/
EOF

echo "✅ Estructura NABU creada en: $(realpath "$ROOT")"
