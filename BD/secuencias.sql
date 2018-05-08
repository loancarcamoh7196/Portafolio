/*------------------------------------------------ Script de SECUENCIAS ------------------------------------------------------*/

----------------------------------------------- Eliminación de Secuencias --------------------------------------------------
DROP SEQUENCE usuarioSeq;
DROP SEQUENCE alumnoSeq;
DROP SEQUENCE antecedentesSeq;
DROP SEQUENCE calificSeq;
DROP SEQUENCE celSeq;
DROP SEQUENCE cemSeq;
DROP SEQUENCE certificadoSeq;
DROP SEQUENCE ciudadesSeq;
DROP SEQUENCE cursoSeq;
DROP SEQUENCE direccionSeq;
DROP SEQUENCE encCELSeq;
DROP SEQUENCE encCEMSeq;
DROP SEQUENCE EstadoSeq;
DROP SEQUENCE familiaSeq;
DROP SEQUENCE PaisSeq;
DROP SEQUENCE postAlumSeq;
DROP SEQUENCE progCEMSeq;
--------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------- Creación de Secuencias ----------------------------------------------------

-- Secuencia Usuario
CREATE SEQUENCE usuarioSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Alumno
CREATE SEQUENCE alumnoSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 500
  MINVALUE 10
;

-- Secuencia Antecedentes
CREATE SEQUENCE antecedentesSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Calificiones
CREATE SEQUENCE calificSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia CEL
CREATE SEQUENCE celSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia CEM
CREATE SEQUENCE cemSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Certificado Curso
CREATE SEQUENCE certificadoSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Ciudad
CREATE SEQUENCE ciudadSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 350
  MINVALUE 10
;

-- Secuencia Cursos CEL
CREATE SEQUENCE cursoSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Direccion
CREATE SEQUENCE direccionSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Encargado CEL
CREATE SEQUENCE encCELSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 200
  MINVALUE 10
;

-- Secuencia Encargado CEM
CREATE SEQUENCE encCEMSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 50
  MINVALUE 10
;

-- Secuencia Estado
CREATE SEQUENCE estadoSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 400
  MINVALUE 10
;

-- Secuencia Familia Anfitriona
CREATE SEQUENCE familiaSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 300
  MINVALUE 10
;

-- Secuencia Pais
CREATE SEQUENCE paisSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 300
  MINVALUE 10
;

-- Secuencia Postulación Alumno
CREATE SEQUENCE postAlumSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;

-- Secuencia Programas Estudios CEM
CREATE SEQUENCE progCEMSeq
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 250
  MINVALUE 10
;
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
