
--DROP SECTION
DROP TABLE alumno CASCADE CONSTRAINTS;
DROP TABLE antecedente CASCADE CONSTRAINTS;
DROP TABLE calificaciones CASCADE CONSTRAINTS;
DROP TABLE cel CASCADE CONSTRAINTS;
DROP TABLE cem CASCADE CONSTRAINTS;
DROP TABLE certificado_curso CASCADE CONSTRAINTS;
DROP TABLE ciudad CASCADE CONSTRAINTS;
DROP TABLE direccion CASCADE CONSTRAINTS;
DROP TABLE encargado_cel CASCADE CONSTRAINTS;
DROP TABLE encargado_cem CASCADE CONSTRAINTS;
DROP TABLE pais CASCADE CONSTRAINTS;
DROP TABLE postulacion_alumno CASCADE CONSTRAINTS;
DROP TABLE programa_estudio_cem CASCADE CONSTRAINTS;
DROP TABLE tipo_usuario CASCADE CONSTRAINTS;
DROP TABLE usuario CASCADE CONSTRAINTS;
DROP TABLE cursos_cel CASCADE CONSTRAINTS;
DROP TABLE familia_anfitriona CASCADE CONSTRAINTS;
DROP TABLE estado CASCADE CONSTRAINTS;
DROP TABLE administrador CASCADE CONSTRAINTS;


--TABLE CREATION
CREATE TABLE estado (
    id_estado             INTEGER NOT NULL,
    estado     VARCHAR2(100) NOT NULL,
    descripcion    VARCHAR2(100) NOT NULL 
);
ALTER TABLE estado ADD CONSTRAINT estado_pk PRIMARY KEY ( id_estado );

CREATE TABLE administrador (
    id_admin        INTEGER NOT NULL,
    fk_id_usuario   INTEGER NOT NULL
);
ALTER TABLE administrador ADD CONSTRAINT administrador_pk PRIMARY KEY ( id_admin );

CREATE TABLE alumno (
    id_alumno        INTEGER NOT NULL,
    genero_alumno    CHAR(1),
    fec_nac_alumno   DATE,
    email_alumno     VARCHAR2(100)NOT NULL,
    fk_id_usuario    INTEGER NOT NULL,
    fk_estado        INTEGER NOT NULL
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE antecedente (
    id_antecedente      INTEGER NOT NULL,
    cert_antecedentes   BLOB,
    cert_residencia     BLOB,
    cert_laboral        BLOB,
    foto_habitacion     BLOB,
    fk_id_familia       INTEGER NOT NULL
);

ALTER TABLE antecedente ADD CONSTRAINT antecedente_pk PRIMARY KEY ( id_antecedente );

CREATE TABLE calificaciones (
    id_calificaciones   INTEGER NOT NULL,
    nota                INTEGER NOT NULL,
    fk_id_alumno        INTEGER NOT NULL,
    fk_id_curso         INTEGER NOT NULL
);

ALTER TABLE calificaciones ADD CONSTRAINT calificaciones_pk PRIMARY KEY ( id_calificaciones );

CREATE TABLE cel (
    id_cel       INTEGER NOT NULL,
    fk_cod_zip   INTEGER NOT NULL
);

ALTER TABLE cel ADD CONSTRAINT cel_pk PRIMARY KEY ( id_cel );

CREATE TABLE cem (
    id_cod          INTEGER NOT NULL,
    nombre_centro   VARCHAR2(50),
    telefono        VARCHAR2(50),
    fk_cod_zip      INTEGER NOT NULL
);

ALTER TABLE cem ADD CONSTRAINT cem_pk PRIMARY KEY ( id_cod );

CREATE TABLE certificado_curso (
    id_certificado     INTEGER NOT NULL,
    cetificado_curso   BLOB,
    fk_id_alumno       INTEGER NOT NULL,
    fk_id_curso        INTEGER NOT NULL
);

ALTER TABLE certificado_curso ADD CONSTRAINT certificado_curso_pk PRIMARY KEY ( id_certificado );

CREATE TABLE ciudad (
    cod_ciudad    VARCHAR2(100) NOT NULL,
    nom_ciudad    VARCHAR2(100) NOT NULL,
    fk_pais   VARCHAR2(100) NOT NULL
);

ALTER TABLE ciudad ADD CONSTRAINT ciudad_pk PRIMARY KEY ( cod_ciudad );

CREATE TABLE cursos_cel (
    id_curso         INTEGER NOT NULL,
    fk_id_programa   INTEGER NOT NULL,
    fk_estado        INTEGER NOT NULL,
    fk_id_cel        INTEGER NOT NULL
);

ALTER TABLE cursos_cel ADD CONSTRAINT cursos_cel_pk PRIMARY KEY ( id_curso );

CREATE TABLE direccion (
    cod_zip         INTEGER NOT NULL,
    direccion       VARCHAR2(100) NOT NULL,
    fk_cod_ciudad   VARCHAR2(100) NOT NULL
);

ALTER TABLE direccion ADD CONSTRAINT direccion_pk PRIMARY KEY ( cod_zip );

CREATE TABLE encargado_cel (
    id_encargadocel   INTEGER NOT NULL,
    fk_id_usuario     INTEGER NOT NULL,
    fk_id_cel         INTEGER NOT NULL
);

ALTER TABLE encargado_cel ADD CONSTRAINT encargado_cel_pk PRIMARY KEY ( id_encargadocel );

CREATE TABLE encargado_cem (
    id_encar_cem    INTEGER NOT NULL,
    fk_id_usuario   INTEGER NOT NULL,
    fk_cem_id_cod   INTEGER NOT NULL
);

ALTER TABLE encargado_cem ADD CONSTRAINT encargado_cem_pk PRIMARY KEY ( id_encar_cem );

CREATE TABLE familia_anfitriona (
    id_familia          INTEGER NOT NULL,
    num_integrantes     INTEGER NOT NULL,
    fk_estado           INTEGER NOT NULL,
    fk_id_cel           INTEGER NOT NULL,
    fk_id_usuario       INTEGER NOT NULL,
    fk_id_postulacion   INTEGER NOT NULL
);

ALTER TABLE familia_anfitriona ADD CONSTRAINT familia_anfitriona_pk PRIMARY KEY ( id_familia );

CREATE TABLE pais (
    cod_pais   VARCHAR2(100) NOT NULL,
    nom_pais   VARCHAR2(100) NOT NULL
);

ALTER TABLE pais ADD CONSTRAINT pais_pk PRIMARY KEY ( cod_pais );

CREATE TABLE postulacion_alumno (
    id_postulacion   INTEGER NOT NULL,
    fk_estado        INTEGER NOT NULL,
    fk_id_alumno     INTEGER NOT NULL,
    fk_id_curso      INTEGER NOT NULL,
    fk_id_familia    INTEGER NOT NULL
);

ALTER TABLE postulacion_alumno ADD CONSTRAINT postulacion_alumno_pk PRIMARY KEY ( id_postulacion );

CREATE TABLE programa_estudio_cem (
    id_programa        INTEGER NOT NULL,
    nombre_programa    VARCHAR2(100) NOT NULL,
    descripcion        VARCHAR2(100) NOT NULL,
    duracion           VARCHAR2(100) NOT NULL,
    cant_min_alumnos   INTEGER NOT NULL,
    cant_max_alumnos   INTEGER NOT NULL,
    fk_id_cod          INTEGER NOT NULL
);

ALTER TABLE programa_estudio_cem ADD CONSTRAINT programa_estudio_cem_pk PRIMARY KEY ( id_programa );

CREATE TABLE tipo_usuario (
    id_tipo       INTEGER NOT NULL,
    descripcion   VARCHAR2(100) NOT NULL
);

ALTER TABLE tipo_usuario ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY ( id_tipo );

CREATE TABLE usuario (
    id_usuario         INTEGER NOT NULL,
    username           VARCHAR2(100) NOT NULL,
    clave              VARCHAR2(100) NOT NULL,
    nombre_usuario     VARCHAR2(100) NOT NULL,
    apellido_usuario   VARCHAR2(100) NOT NULL,
    email_usuario      VARCHAR2(100) NOT NULL,
    fk_id_tipo         INTEGER NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE alumno
    ADD CONSTRAINT estado_alumno_fk FOREIGN KEY ( fk_estado )
        REFERENCES estado ( id_estado );
        
ALTER TABLE postulacion_alumno
    ADD CONSTRAINT estado_postAlumno_fk FOREIGN KEY ( fk_estado )
        REFERENCES estado ( id_estado ); 
 
ALTER TABLE cursos_cel
    ADD CONSTRAINT estado_cursoCel_fk FOREIGN KEY ( fk_estado )
        REFERENCES estado ( id_estado );         

ALTER TABLE familia_anfitriona
    ADD CONSTRAINT estado_familia_fk FOREIGN KEY ( fk_estado )
        REFERENCES estado ( id_estado ); 

ALTER TABLE alumno
    ADD CONSTRAINT alumno_usuario_fk FOREIGN KEY ( fk_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE antecedente
    ADD CONSTRAINT antecedente__fk FOREIGN KEY ( fk_id_familia )
        REFERENCES familia_anfitriona ( id_familia );

ALTER TABLE calificaciones
    ADD CONSTRAINT calificaciones_alumno_fk FOREIGN KEY ( fk_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE calificaciones
    ADD CONSTRAINT calificaciones_cursos_cel_fk FOREIGN KEY ( fk_id_curso )
        REFERENCES cursos_cel ( id_curso );

ALTER TABLE cel
    ADD CONSTRAINT cel_direccion_fk FOREIGN KEY ( fk_cod_zip )
        REFERENCES direccion ( cod_zip );

ALTER TABLE cem
    ADD CONSTRAINT cem_direccion_fk FOREIGN KEY ( fk_cod_zip )
        REFERENCES direccion ( cod_zip );

ALTER TABLE certificado_curso
    ADD CONSTRAINT certificado_alumno_fk FOREIGN KEY ( fk_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE certificado_curso
    ADD CONSTRAINT certificado_curso_fk FOREIGN KEY ( fk_id_curso )
        REFERENCES cursos_cel ( id_curso );

ALTER TABLE ciudad
    ADD CONSTRAINT ciudad_pais_fk FOREIGN KEY ( fk_pais )
        REFERENCES pais ( cod_pais );

ALTER TABLE cursos_cel
    ADD CONSTRAINT cursos_cel_cel_fk FOREIGN KEY ( fk_id_cel )
        REFERENCES cel ( id_cel );

ALTER TABLE cursos_cel
    ADD CONSTRAINT pestudiocem_fk FOREIGN KEY ( fk_id_programa )
        REFERENCES programa_estudio_cem ( id_programa );

ALTER TABLE direccion
    ADD CONSTRAINT direccion_ciudad_fk FOREIGN KEY ( fk_cod_ciudad )
        REFERENCES ciudad ( cod_ciudad );

ALTER TABLE encargado_cel
    ADD CONSTRAINT encargado_cel_cel_fk FOREIGN KEY ( fk_id_cel )
        REFERENCES cel ( id_cel );

ALTER TABLE encargado_cel
    ADD CONSTRAINT encargado_usuario_fk FOREIGN KEY ( fk_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE encargado_cem
    ADD CONSTRAINT encargadocem_cem_fk FOREIGN KEY ( fk_cem_id_cod )
        REFERENCES cem ( id_cod );

ALTER TABLE encargado_cem
    ADD CONSTRAINT encargadocem_usuario_fk FOREIGN KEY ( fk_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE administrador
    ADD CONSTRAINT admin_usuario_fk FOREIGN KEY ( id_admin )
        REFERENCES usuario ( id_usuario );

ALTER TABLE familia_anfitriona
    ADD CONSTRAINT familiaanfitriona_cel_fk FOREIGN KEY ( fk_id_cel )
        REFERENCES cel ( id_cel );

ALTER TABLE familia_anfitriona
    ADD CONSTRAINT familia_postalumno_fk FOREIGN KEY ( fk_id_postulacion )
        REFERENCES postulacion_alumno ( id_postulacion );

ALTER TABLE familia_anfitriona
    ADD CONSTRAINT familia_usuario_fk FOREIGN KEY ( fk_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE postulacion_alumno
    ADD CONSTRAINT postulacion_alumno_fk FOREIGN KEY ( fk_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE postulacion_alumno
    ADD CONSTRAINT cel_fk FOREIGN KEY ( fk_id_curso )
        REFERENCES cursos_cel ( id_curso );

ALTER TABLE postulacion_alumno
    ADD CONSTRAINT postulacion_alumno FOREIGN KEY ( fk_id_familia )
        REFERENCES familia_anfitriona ( id_familia );

ALTER TABLE programa_estudio_cem
    ADD CONSTRAINT programa_cem_fk FOREIGN KEY ( fk_id_cod )
        REFERENCES cem ( id_cod );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_tipousuario_fk FOREIGN KEY ( fk_id_tipo )
        REFERENCES tipo_usuario ( id_tipo );