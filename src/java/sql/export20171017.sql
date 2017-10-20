--------------------------------------------------------
-- Archivo creado  - martes-octubre-17-2017   
--------------------------------------------------------
DROP TABLE "TBL_AUTENTIFICACION" cascade constraints;
DROP TABLE "TBL_DIAFESTIVO" cascade constraints;
DROP TABLE "TBL_ESTADO" cascade constraints;
DROP TABLE "TBL_ESTADOSOLICITUDPERMISO" cascade constraints;
DROP TABLE "TBL_FUNCIONARIO" cascade constraints;
DROP TABLE "TBL_MODULO" cascade constraints;
DROP TABLE "TBL_PERMISO" cascade constraints;
DROP TABLE "TBL_PERMISOUSUARIO" cascade constraints;
DROP TABLE "TBL_REG_ERRORES" cascade constraints;
DROP TABLE "TBL_REGISTROASISTENCIA" cascade constraints;
DROP TABLE "TBL_REGISTROFUNCIONARIO" cascade constraints;
DROP TABLE "TBL_ROL" cascade constraints;
DROP TABLE "TBL_ROLUSUARIO" cascade constraints;
DROP TABLE "TBL_SOLICITUDPERMISO" cascade constraints;
DROP TABLE "TBL_UNIDADINTERNA" cascade constraints;
DROP TABLE "TBL_USUARIO" cascade constraints;
DROP TABLE "TBL_USUARIOMODULO" cascade constraints;
DROP SEQUENCE "ROL_SEQ";
DROP SEQUENCE "SQ_ERROR";
DROP SEQUENCE "TBL_AUTENTIFICACION_SEQ";
DROP SEQUENCE "TBL_DIAFESTIVO_SEQ";
DROP SEQUENCE "TBL_ESTADO_SEQ";
DROP SEQUENCE "TBL_MODULO_SEQ";
DROP SEQUENCE "TBL_PERMISO_SEQ";
DROP SEQUENCE "TBL_REGISTROASISTENCIA_SEQ";
DROP SEQUENCE "TBL_SOLICITUDPERMISO_SEQ";
DROP SEQUENCE "TBL_UNIDADINTERNA_SEQ";
DROP VIEW "VW_CANTIDAD_PERMISOS_USUARIOS";
DROP VIEW "VW_RESUMEN_CANT_PERIODO";
DROP VIEW "VW_RESUMEN_CANT_TIPOPERMISO";
DROP VIEW "VW_USUARIOLOGIN";
DROP PACKAGE "PKG_LOGIN_USUARIO";
DROP PACKAGE "PKG_MANTENEDOR_SOLICITUD";
DROP PACKAGE "PKG_MANTENEDOR_TBL_ESTADO";
DROP PACKAGE "PKG_MANTENEDOR_TBL_MODULO";
DROP PACKAGE "PKG_MANTENEDOR_TBL_PERMISO";
DROP PACKAGE "PKG_MANTENEDOR_TBL_ROL";
DROP PACKAGE "PKG_MANTENEDOR_UINTERNA";
DROP PACKAGE "PKG_MANTENEDOR_USUARIO";
DROP PACKAGE BODY "PKG_LOGIN_USUARIO";
DROP PACKAGE BODY "PKG_MANTENEDOR_SOLICITUD";
DROP PACKAGE BODY "PKG_MANTENEDOR_TBL_ESTADO";
DROP PACKAGE BODY "PKG_MANTENEDOR_TBL_MODULO";
DROP PACKAGE BODY "PKG_MANTENEDOR_TBL_PERMISO";
DROP PACKAGE BODY "PKG_MANTENEDOR_TBL_ROL";
DROP PACKAGE BODY "PKG_MANTENEDOR_UINTERNA";
DROP PACKAGE BODY "PKG_MANTENEDOR_USUARIO";
--------------------------------------------------------
--  DDL for Sequence ROL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ROL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1101  ;
--------------------------------------------------------
--  DDL for Sequence SQ_ERROR
--------------------------------------------------------

   CREATE SEQUENCE  "SQ_ERROR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101  ;
--------------------------------------------------------
--  DDL for Sequence TBL_AUTENTIFICACION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_AUTENTIFICACION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81  ;
--------------------------------------------------------
--  DDL for Sequence TBL_DIAFESTIVO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_DIAFESTIVO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1  ;
--------------------------------------------------------
--  DDL for Sequence TBL_ESTADO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_ESTADO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1201  ;
--------------------------------------------------------
--  DDL for Sequence TBL_MODULO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_MODULO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1041  ;
--------------------------------------------------------
--  DDL for Sequence TBL_PERMISO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_PERMISO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1041  ;
--------------------------------------------------------
--  DDL for Sequence TBL_REGISTROASISTENCIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_REGISTROASISTENCIA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1001  ;
--------------------------------------------------------
--  DDL for Sequence TBL_SOLICITUDPERMISO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_SOLICITUDPERMISO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1021  ;
--------------------------------------------------------
--  DDL for Sequence TBL_UNIDADINTERNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_UNIDADINTERNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1041  ;
--------------------------------------------------------
--  DDL for Table TBL_AUTENTIFICACION
--------------------------------------------------------

  CREATE TABLE "TBL_AUTENTIFICACION" 
   (	"ID_AUTENTIFICACION" NUMBER, 
	"FH_AUTENTIFICACION" TIMESTAMP (6), 
	"RUT_USUARIO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_DIAFESTIVO
--------------------------------------------------------

  CREATE TABLE "TBL_DIAFESTIVO" 
   (	"ID_DIAFEST" DATE, 
	"DESC_DIAFEST" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_ESTADO
--------------------------------------------------------

  CREATE TABLE "TBL_ESTADO" 
   (	"ID_ESTADO_SOL" NUMBER, 
	"DESC_ESTADO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_ESTADOSOLICITUDPERMISO
--------------------------------------------------------

  CREATE TABLE "TBL_ESTADOSOLICITUDPERMISO" 
   (	"ID_ESTADO" NUMBER, 
	"ID_SOLICITUDPERMISO" NUMBER, 
	"FH_ESTADO" TIMESTAMP (6), 
	"RESPONSABLE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_FUNCIONARIO
--------------------------------------------------------

  CREATE TABLE "TBL_FUNCIONARIO" 
   (	"RUT_FUNCIONARIO" NUMBER, 
	"FECHA_INGRESO" DATE, 
	"FECHA_DESVINCULACION" DATE, 
	"DESC_CARGO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_MODULO
--------------------------------------------------------

  CREATE TABLE "TBL_MODULO" 
   (	"ID_MODULO" NUMBER, 
	"DESC_MODULO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_PERMISO
--------------------------------------------------------

  CREATE TABLE "TBL_PERMISO" 
   (	"ID_PERMISO" NUMBER, 
	"RECURSO_LEGAL" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_PERMISOUSUARIO
--------------------------------------------------------

  CREATE TABLE "TBL_PERMISOUSUARIO" 
   (	"RUT_USUARIO" NUMBER, 
	"ID_PERMISO" NUMBER, 
	"DIAS_AUTORIZADOS" NUMBER(38,0), 
	"COMENTARIOS" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_REG_ERRORES
--------------------------------------------------------

  CREATE TABLE "TBL_REG_ERRORES" 
   (	"NUMERO_ERROR" NUMBER(10,0), 
	"NOMBRESUBPROGRAMA" VARCHAR2(200 BYTE), 
	"NUMEROYMENSAJEDEERROR" VARCHAR2(200 BYTE), 
	"FECHAHORAERROR" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_REGISTROASISTENCIA
--------------------------------------------------------

  CREATE TABLE "TBL_REGISTROASISTENCIA" 
   (	"ID_REGISTRO" NUMBER, 
	"FH_INGRESO" TIMESTAMP (6), 
	"FH_SALIDA" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_REGISTROFUNCIONARIO
--------------------------------------------------------

  CREATE TABLE "TBL_REGISTROFUNCIONARIO" 
   (	"RUT_FUNCIONARIO" NUMBER, 
	"ID_REGISTRO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_ROL
--------------------------------------------------------

  CREATE TABLE "TBL_ROL" 
   (	"ID_ROL" NUMBER, 
	"NOMBRE_ROL" VARCHAR2(50 BYTE), 
	"DESC_ROL" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_ROLUSUARIO
--------------------------------------------------------

  CREATE TABLE "TBL_ROLUSUARIO" 
   (	"RUT_USUARIO" NUMBER, 
	"ID_ROL" NUMBER
   )  ;
--------------------------------------------------------
--  DDL for Table TBL_SOLICITUDPERMISO
--------------------------------------------------------

  CREATE TABLE "TBL_SOLICITUDPERMISO" 
   (	"ID_SOLICITUD" NUMBER, 
	"FECHA_INICIO" DATE, 
	"FECHA_FIN_SOL" DATE, 
	"RUT_USUARIO" NUMBER, 
	"MOTIVO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_UNIDADINTERNA
--------------------------------------------------------

  CREATE TABLE "TBL_UNIDADINTERNA" 
   (	"ID_UNIDAD_INTERNA" NUMBER, 
	"DESC_UNIDAD_INTERNA" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO
--------------------------------------------------------

  CREATE TABLE "TBL_USUARIO" 
   (	"RUT_USUARIO" NUMBER, 
	"AP_PATERNO" VARCHAR2(50 BYTE), 
	"AP_MATERNO" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"TEL_PARTICULAR" VARCHAR2(12 BYTE), 
	"DIR_PARTICULAR" VARCHAR2(100 BYTE), 
	"TEL_INSTITUCIONAL" VARCHAR2(12 BYTE), 
	"PASSWORD" VARCHAR2(1000 BYTE), 
	"ID_UNIDAD_INTERNA" NUMBER, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"CARGO" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIOMODULO
--------------------------------------------------------

  CREATE TABLE "TBL_USUARIOMODULO" 
   (	"RUT_USUARIO" NUMBER, 
	"ID_MODULO" NUMBER
   );
--------------------------------------------------------
--  DDL for View VW_CANTIDAD_PERMISOS_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_CANTIDAD_PERMISOS_USUARIOS" ("RUT_USUARIO", "NOMBRE_USUARIO", "RECURSO_LEGAL", "DIAS_AUTORIZADOS", "COMENTARIOS") AS 
  SELECT
tbl_usuario.rut_usuario,
tbl_usuario.nombre||' '||tbl_usuario.ap_paterno||' '||tbl_usuario.ap_materno AS nombre_usuario,
tbl_permiso.recurso_legal,
tbl_permisousuario.dias_autorizados,
tbl_permisousuario.comentarios
FROM tbl_usuario LEFT JOIN tbl_permisousuario ON tbl_usuario.rut_usuario=tbl_permisousuario.rut_usuario
                 LEFT JOIN tbl_permiso ON tbl_permiso.id_permiso=tbl_permisousuario.id_permiso;
--------------------------------------------------------
--  DDL for View VW_RESUMEN_CANT_PERIODO
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_RESUMEN_CANT_PERIODO" ("PERIODOSOLICITUD", "RECURSO_LEGAL", "DESC_ESTADO", "CANTIDAD_PERMISOS") AS 
  SELECT TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'YYYY')
  || TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'MM') AS PeriodoSolicitud,
  tbl_Permiso.recurso_legal,
  tbl_Estado.desc_estado,
  COUNT(*) AS Cantidad_Permisos
FROM tbl_Permiso
INNER JOIN tbl_PermisoUsuario
ON tbl_Permiso.id_permiso = tbl_PermisoUsuario.id_permiso
INNER JOIN tbl_Usuario
ON tbl_Usuario.rut_usuario = tbl_PermisoUsuario.rut_usuario
INNER JOIN tbl_UnidadInterna
ON tbl_UnidadInterna.id_unidad_interna = tbl_Usuario.id_unidad_interna
INNER JOIN tbl_SolicitudPermiso
ON tbl_Usuario.rut_usuario = tbl_SolicitudPermiso.rut_usuario
INNER JOIN tbl_EstadoSolicitudPermiso
ON tbl_SolicitudPermiso.id_solicitud = tbl_EstadoSolicitudPermiso.id_SolicitudPermiso
INNER JOIN tbl_Estado
ON tbl_Estado.id_estado_sol = tbl_EstadoSolicitudPermiso.id_Estado
GROUP BY 
TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'YYYY')
  || TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'MM') ,
tbl_Permiso.recurso_legal,
  tbl_Estado.desc_estado,
  TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'MM')
  || TO_CHAR(tbl_EstadoSolicitudPermiso.fh_estado, 'YYYY');
--------------------------------------------------------
--  DDL for View VW_RESUMEN_CANT_TIPOPERMISO
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_RESUMEN_CANT_TIPOPERMISO" ("DESC_UNIDAD_INTERNA", "RECURSO_LEGAL", "DESC_ESTADO", "CANTIDAD_PERMISOS") AS 
  SELECT tbl_UnidadInterna.desc_unidad_interna,
  tbl_Permiso.recurso_legal,
  tbl_Estado.desc_estado,
  COUNT(*) AS Cantidad_Permisos
FROM tbl_Permiso
INNER JOIN tbl_PermisoUsuario
ON tbl_Permiso.id_permiso = tbl_PermisoUsuario.id_permiso
INNER JOIN tbl_Usuario
ON tbl_Usuario.rut_usuario = tbl_PermisoUsuario.rut_usuario
INNER JOIN tbl_UnidadInterna
ON tbl_UnidadInterna.id_unidad_interna = tbl_Usuario.id_unidad_interna
INNER JOIN tbl_SolicitudPermiso
ON tbl_Usuario.rut_usuario = tbl_SolicitudPermiso.rut_usuario
INNER JOIN tbl_EstadoSolicitudPermiso
ON tbl_SolicitudPermiso.id_solicitud = tbl_EstadoSolicitudPermiso.id_SolicitudPermiso
INNER JOIN tbl_Estado
ON tbl_Estado.id_estado_sol = tbl_EstadoSolicitudPermiso.id_Estado
GROUP BY tbl_UnidadInterna.desc_unidad_interna,
  tbl_Permiso.recurso_legal,
  tbl_Estado.desc_estado;
--------------------------------------------------------
--  DDL for View VW_USUARIOLOGIN
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_USUARIOLOGIN" ("RUT_USUARIO", "PASSWORD") AS 
  SELECT RUT_USUARIO, PASSWORD FROM TBL_USUARIO;

Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('1','Creado');
Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('2','Enviado para Revisión');
Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('3','Autorizado');
Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('4','Rechazado');
Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('5','Revocado por No Utilización');
Insert into VSSTUDIOUSER.TBL_ESTADO (ID_ESTADO_SOL,DESC_ESTADO) values ('6','Revocado Especial');

Insert into VSSTUDIOUSER.TBL_MODULO (ID_MODULO,DESC_MODULO) values ('1001','Web');
Insert into VSSTUDIOUSER.TBL_MODULO (ID_MODULO,DESC_MODULO) values ('1002','Escritorio');

Insert into VSSTUDIOUSER.TBL_PERMISO (ID_PERMISO,RECURSO_LEGAL) values ('1001','Permiso Administrativo');
Insert into VSSTUDIOUSER.TBL_PERMISO (ID_PERMISO,RECURSO_LEGAL) values ('1002','Fallecimiento de Familiar');
Insert into VSSTUDIOUSER.TBL_PERMISO (ID_PERMISO,RECURSO_LEGAL) values ('1003','Feriado Legal Anual');
Insert into VSSTUDIOUSER.TBL_PERMISO (ID_PERMISO,RECURSO_LEGAL) values ('1004','Solicitud Especial Adicional');

Insert into VSSTUDIOUSER.TBL_PERMISOUSUARIO (RUT_USUARIO,ID_PERMISO,DIAS_AUTORIZADOS,COMENTARIOS) values ('16747468','1001','6','POR_DEFECTO');
Insert into VSSTUDIOUSER.TBL_PERMISOUSUARIO (RUT_USUARIO,ID_PERMISO,DIAS_AUTORIZADOS,COMENTARIOS) values ('16747468','1002','7','POR_DEFECTO');
Insert into VSSTUDIOUSER.TBL_PERMISOUSUARIO (RUT_USUARIO,ID_PERMISO,DIAS_AUTORIZADOS,COMENTARIOS) values ('16747468','1003','0','POR_DEFECTO');
Insert into VSSTUDIOUSER.TBL_PERMISOUSUARIO (RUT_USUARIO,ID_PERMISO,DIAS_AUTORIZADOS,COMENTARIOS) values ('16747468','1004','0','POR_DEFECTO');

Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('21','TBL_PERMISO_003','NO EXISTE ID PARA ELIMINAR',to_timestamp('14/10/17 02:04:35,669000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('22','TBL_PERMISO_003','NO EXISTE ID PARA ELIMINAR',to_timestamp('14/10/17 02:12:07,243000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('23','TBL_PERMISO_002','NO EXISTE ID PARA ACTUALIZAR',to_timestamp('14/10/17 02:22:44,052000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('24','TBL_PERMISO_001','YA EXISTE DESCRIPCION SIMILAR',to_timestamp('14/10/17 02:23:51,912000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('25','TBL_ESTADO_001','YA EXISTE DESCRIPCION SIMILAR',to_timestamp('14/10/17 02:34:15,273000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('26','TBL_ESTADO_002','NO EXISTE ID PARA ACTUALIZAR',to_timestamp('14/10/17 02:34:51,621000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('27','TBL_ESTADO_003','NO EXISTE ID PARA ELIMINAR',to_timestamp('14/10/17 02:35:36,737000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('28','TBL_ROL_001','YA EXISTE DESCRIPCION SIMILAR',to_timestamp('14/10/17 03:31:42,540000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('29','TBL_ROL_002','NO EXISTE ID PARA ACTUALIZAR',to_timestamp('14/10/17 03:35:01,347000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('30','TBL_ROL_002','NO EXISTE ID PARA ACTUALIZAR',to_timestamp('14/10/17 03:35:07,540000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('41','LOGIN_001','NO EXISTE USUARIO PARA REESTABLECER CLAVE',to_timestamp('16/10/17 00:01:00,223000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('42','LOGIN_001','NO EXISTE USUARIO PARA REESTABLECER CLAVE',to_timestamp('16/10/17 00:07:54,294000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('43','-1','ORA-00001: restricción única (VSSTUDIOUSER.ENROLA__IDX) violada',to_timestamp('16/10/17 00:42:42,920000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('44','TBL_ROLUSUARIO_002','NO EXISTE ID_ROL PARA ASIGNAR',to_timestamp('16/10/17 00:43:16,990000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('45','TBL_ROLUSUARIO_001','NO EXISTE RUT PARA ASIGNAR',to_timestamp('16/10/17 00:47:23,548000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('46','TBL_ROLUSUARIO_001','NO EXISTE RUT PARA ACTUALIZAR',to_timestamp('16/10/17 00:49:03,045000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('47','TBL_ROLUSUARIO_001','NO EXISTE RUT-ROL PARA ELIMINAR',to_timestamp('16/10/17 00:58:27,470000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('48','tbl_usuariomodulo_001','NO EXISTE RUT PARA ACTUALIZAR',to_timestamp('16/10/17 01:40:51,660000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('61','TBL_unidadinterna_001','YA EXISTE DESCRIPCION SIMILAR',to_timestamp('16/10/17 21:46:57,748000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('81','tbl_solicitudpermiso_001','USUARIO SOBREPASA DIAS AUTORIZADOS',to_timestamp('17/10/17 00:55:46,465000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('82','tbl_solicitudpermiso_001','USUARIO SOBREPASA DIAS AUTORIZADOS',to_timestamp('17/10/17 01:13:23,121000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into VSSTUDIOUSER.TBL_REG_ERRORES (NUMERO_ERROR,NOMBRESUBPROGRAMA,NUMEROYMENSAJEDEERROR,FECHAHORAERROR) values ('83','tbl_usuario_001','USUARIO YA EXISTE EN EL SISTEMA',to_timestamp('17/10/17 02:29:02,267000000','DD/MM/RR HH24:MI:SS,FF'));

Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('1','Administrador','Acceso a todos los módulos');
Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('2','Alcalde','Acceso a consulta de permisos de todo el sistema');
Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('3','Jefe de Unidad Superior','Acceso a consulta de permisos de todas las Unidades Internas ');
Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('4','Jefe de Unidad Interna','Acceso a consulta de permisos de sus funcionarios');
Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('5','Funcionario','Acceso a consulta de permisos creados por si mismo');
Insert into VSSTUDIOUSER.TBL_ROL (ID_ROL,NOMBRE_ROL,DESC_ROL) values ('1081','6','4');

Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1001','Administración');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1002','Operaciones');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1003','Desarrollo Comunitario');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1004','Finanzas');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1005','Tránsito');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1006','Comunicaciones');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1007','Obras');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1008','Medio Ambiente');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1009','Secretaría Municipal');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1010','Asesoría Jurídica');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1011','Contraloría');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1012','Secretaría Comunal');
Insert into VSSTUDIOUSER.TBL_UNIDADINTERNA (ID_UNIDAD_INTERNA,DESC_UNIDAD_INTERNA) values ('1013','Vivienda Social');

Insert into VSSTUDIOUSER.TBL_USUARIO (RUT_USUARIO,AP_PATERNO,AP_MATERNO,NOMBRE,TEL_PARTICULAR,DIR_PARTICULAR,TEL_INSTITUCIONAL,PASSWORD,ID_UNIDAD_INTERNA,EMAIL,CARGO) values ('16747468','MAGNA','ROJAS','IGNACIO','56994719827','A.VARAS 1568, PROVIDENCIA','56224688716','AFBC1C3AF5BC49FC70FCDD4FFAE11E23','1001','jmagna.r@gmail.com','Alcalde');

--------------------------------------------------------
--  DDL for Index tbl_DiaFestivo PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_DiaFestivo PK" ON "TBL_DIAFESTIVO" ("ID_DIAFEST");
--------------------------------------------------------
--  DDL for Index CLASIFICA__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLASIFICA__IDX" ON "TBL_ESTADOSOLICITUDPERMISO" ("ID_ESTADO", "ID_SOLICITUDPERMISO", "FH_ESTADO") ;
--------------------------------------------------------
--  DDL for Index tbl_Rol PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_Rol PK" ON "TBL_ROL" ("ID_ROL");
--------------------------------------------------------
--  DDL for Index MARCA__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MARCA__IDX" ON "TBL_REGISTROFUNCIONARIO" ("RUT_FUNCIONARIO", "ID_REGISTRO") ;
--------------------------------------------------------
--  DDL for Index DISPONE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "DISPONE__IDX" ON "TBL_PERMISOUSUARIO" ("RUT_USUARIO", "ID_PERMISO");
--------------------------------------------------------
--  DDL for Index ACCEDE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCEDE__IDX" ON "TBL_USUARIOMODULO" ("RUT_USUARIO", "ID_MODULO");
--------------------------------------------------------
--  DDL for Index tbl_Autentificacion PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_Autentificacion PK" ON "TBL_AUTENTIFICACION" ("ID_AUTENTIFICACION");
--------------------------------------------------------
--  DDL for Index tbl_Modulo PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_Modulo PK" ON "TBL_MODULO" ("ID_MODULO");
--------------------------------------------------------
--  DDL for Index tbl_PermisoUsuario PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_PermisoUsuario PK" ON "TBL_PERMISO" ("ID_PERMISO");
--------------------------------------------------------
--  DDL for Index tbl_Funcionario PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_Funcionario PK" ON "TBL_FUNCIONARIO" ("RUT_FUNCIONARIO");
--------------------------------------------------------
--  DDL for Index tbl_EstadoSolicitud PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_EstadoSolicitud PK" ON "TBL_ESTADO" ("ID_ESTADO_SOL");
--------------------------------------------------------
--  DDL for Index tbl_Usuario PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_Usuario PK" ON "TBL_USUARIO" ("RUT_USUARIO");
--------------------------------------------------------
--  DDL for Index tbl_asistencia PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_asistencia PK" ON "TBL_REGISTROASISTENCIA" ("ID_REGISTRO");
--------------------------------------------------------
--  DDL for Index ENROLA__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENROLA__IDX" ON "TBL_ROLUSUARIO" ("RUT_USUARIO", "ID_ROL");
--------------------------------------------------------
--  DDL for Index tbl_UnidadInterna PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_UnidadInterna PK" ON "TBL_UNIDADINTERNA" ("ID_UNIDAD_INTERNA");
--------------------------------------------------------
--  DDL for Index tbl_SolicitudPermiso PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "tbl_SolicitudPermiso PK" ON "TBL_SOLICITUDPERMISO" ("ID_SOLICITUD");
--------------------------------------------------------
--  Constraints for Table TBL_ESTADO
--------------------------------------------------------

  ALTER TABLE "TBL_ESTADO" MODIFY ("ID_ESTADO_SOL" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADO" MODIFY ("DESC_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADO" ADD CONSTRAINT "tbl_EstadoSolicitud PK" PRIMARY KEY ("ID_ESTADO_SOL");
--------------------------------------------------------
--  Constraints for Table TBL_UNIDADINTERNA
--------------------------------------------------------
------acá
  ALTER TABLE "TBL_UNIDADINTERNA" MODIFY ("ID_UNIDAD_INTERNA" NOT NULL ENABLE);
  ALTER TABLE "TBL_UNIDADINTERNA" MODIFY ("DESC_UNIDAD_INTERNA" NOT NULL ENABLE);
  ALTER TABLE "TBL_UNIDADINTERNA" ADD CONSTRAINT "tbl_UnidadInterna PK" PRIMARY KEY ("ID_UNIDAD_INTERNA");
--------------------------------------------------------
--  Constraints for Table TBL_ROLUSUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_ROLUSUARIO" MODIFY ("RUT_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_ROLUSUARIO" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "TBL_ROLUSUARIO" ADD CONSTRAINT "ENROLA__IDX" PRIMARY KEY ("RUT_USUARIO", "ID_ROL");
--------------------------------------------------------
--  Constraints for Table TBL_PERMISOUSUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_PERMISOUSUARIO" MODIFY ("RUT_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_PERMISOUSUARIO" MODIFY ("ID_PERMISO" NOT NULL ENABLE);
  ALTER TABLE "TBL_PERMISOUSUARIO" ADD CONSTRAINT "DISPONE__IDX" PRIMARY KEY ("RUT_USUARIO", "ID_PERMISO");
--------------------------------------------------------
--  Constraints for Table TBL_FUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "TBL_FUNCIONARIO" MODIFY ("RUT_FUNCIONARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_FUNCIONARIO" MODIFY ("FECHA_INGRESO" NOT NULL ENABLE);
  ALTER TABLE "TBL_FUNCIONARIO" MODIFY ("FECHA_DESVINCULACION" NOT NULL ENABLE);
  ALTER TABLE "TBL_FUNCIONARIO" MODIFY ("DESC_CARGO" NOT NULL ENABLE);
  ALTER TABLE "TBL_FUNCIONARIO" ADD CONSTRAINT "tbl_Funcionario PK" PRIMARY KEY ("RUT_FUNCIONARIO");
--------------------------------------------------------
--  Constraints for Table TBL_REGISTROFUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "TBL_REGISTROFUNCIONARIO" MODIFY ("RUT_FUNCIONARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_REGISTROFUNCIONARIO" MODIFY ("ID_REGISTRO" NOT NULL ENABLE);
  ALTER TABLE "TBL_REGISTROFUNCIONARIO" ADD CONSTRAINT "MARCA__IDX" PRIMARY KEY ("RUT_FUNCIONARIO", "ID_REGISTRO");
--------------------------------------------------------
--  Constraints for Table TBL_REGISTROASISTENCIA
--------------------------------------------------------

  ALTER TABLE "TBL_REGISTROASISTENCIA" MODIFY ("ID_REGISTRO" NOT NULL ENABLE);
  ALTER TABLE "TBL_REGISTROASISTENCIA" MODIFY ("FH_INGRESO" NOT NULL ENABLE);
  ALTER TABLE "TBL_REGISTROASISTENCIA" MODIFY ("FH_SALIDA" NOT NULL ENABLE);
  ALTER TABLE "TBL_REGISTROASISTENCIA" ADD CONSTRAINT "tbl_asistencia PK" PRIMARY KEY ("ID_REGISTRO");
--------------------------------------------------------
--  Constraints for Table TBL_ROL
--------------------------------------------------------

  ALTER TABLE "TBL_ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "TBL_ROL" MODIFY ("NOMBRE_ROL" NOT NULL ENABLE);
  ALTER TABLE "TBL_ROL" MODIFY ("DESC_ROL" NOT NULL ENABLE);
  ALTER TABLE "TBL_ROL" ADD CONSTRAINT "tbl_Rol PK" PRIMARY KEY ("ID_ROL");
--------------------------------------------------------
--  Constraints for Table TBL_USUARIOMODULO
--------------------------------------------------------

  ALTER TABLE "TBL_USUARIOMODULO" MODIFY ("RUT_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIOMODULO" MODIFY ("ID_MODULO" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIOMODULO" ADD CONSTRAINT "ACCEDE__IDX" PRIMARY KEY ("RUT_USUARIO", "ID_MODULO");
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_USUARIO" MODIFY ("RUT_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("AP_PATERNO" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("AP_MATERNO" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("DIR_PARTICULAR" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" MODIFY ("ID_UNIDAD_INTERNA" NOT NULL ENABLE);
  ALTER TABLE "TBL_USUARIO" ADD CONSTRAINT "tbl_Usuario PK" PRIMARY KEY ("RUT_USUARIO");
--------------------------------------------------------
--  Constraints for Table TBL_REG_ERRORES
--------------------------------------------------------

  ALTER TABLE "TBL_REG_ERRORES" ADD PRIMARY KEY ("NUMERO_ERROR");
--------------------------------------------------------
--  Constraints for Table TBL_PERMISO
--------------------------------------------------------

  ALTER TABLE "TBL_PERMISO" MODIFY ("ID_PERMISO" NOT NULL ENABLE);
  ALTER TABLE "TBL_PERMISO" MODIFY ("RECURSO_LEGAL" NOT NULL ENABLE);
  ALTER TABLE "TBL_PERMISO" ADD CONSTRAINT "tbl_PermisoUsuario PK" PRIMARY KEY ("ID_PERMISO");
--------------------------------------------------------
--  Constraints for Table TBL_ESTADOSOLICITUDPERMISO
--------------------------------------------------------

  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" MODIFY ("ID_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" MODIFY ("ID_SOLICITUDPERMISO" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" MODIFY ("FH_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" MODIFY ("RESPONSABLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" ADD CONSTRAINT "CLASIFICA__IDX" PRIMARY KEY ("ID_ESTADO", "ID_SOLICITUDPERMISO", "FH_ESTADO");
--------------------------------------------------------
--  Constraints for Table TBL_AUTENTIFICACION
--------------------------------------------------------

  ALTER TABLE "TBL_AUTENTIFICACION" MODIFY ("ID_AUTENTIFICACION" NOT NULL ENABLE);
  ALTER TABLE "TBL_AUTENTIFICACION" MODIFY ("FH_AUTENTIFICACION" NOT NULL ENABLE);
  ALTER TABLE "TBL_AUTENTIFICACION" ADD CONSTRAINT "tbl_Autentificacion PK" PRIMARY KEY ("ID_AUTENTIFICACION");
--------------------------------------------------------
--  Constraints for Table TBL_DIAFESTIVO
--------------------------------------------------------

  ALTER TABLE "TBL_DIAFESTIVO" MODIFY ("ID_DIAFEST" NOT NULL ENABLE);
  ALTER TABLE "TBL_DIAFESTIVO" MODIFY ("DESC_DIAFEST" NOT NULL ENABLE);
  ALTER TABLE "TBL_DIAFESTIVO" ADD CONSTRAINT "tbl_DiaFestivo PK" PRIMARY KEY ("ID_DIAFEST");
--------------------------------------------------------
--  Constraints for Table TBL_SOLICITUDPERMISO
--------------------------------------------------------

  ALTER TABLE "TBL_SOLICITUDPERMISO" MODIFY ("MOTIVO" NOT NULL ENABLE);
  ALTER TABLE "TBL_SOLICITUDPERMISO" MODIFY ("ID_SOLICITUD" NOT NULL ENABLE);
  ALTER TABLE "TBL_SOLICITUDPERMISO" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "TBL_SOLICITUDPERMISO" MODIFY ("FECHA_FIN_SOL" NOT NULL ENABLE);
  ALTER TABLE "TBL_SOLICITUDPERMISO" ADD CONSTRAINT "tbl_SolicitudPermiso PK" PRIMARY KEY ("ID_SOLICITUD");
--------------------------------------------------------
--  Constraints for Table TBL_MODULO
--------------------------------------------------------

  ALTER TABLE "TBL_MODULO" MODIFY ("ID_MODULO" NOT NULL ENABLE);
  ALTER TABLE "TBL_MODULO" MODIFY ("DESC_MODULO" NOT NULL ENABLE);
  ALTER TABLE "TBL_MODULO" ADD CONSTRAINT "tbl_Modulo PK" PRIMARY KEY ("ID_MODULO");
--------------------------------------------------------
--  Ref Constraints for Table TBL_AUTENTIFICACION
--------------------------------------------------------

  ALTER TABLE "TBL_AUTENTIFICACION" ADD CONSTRAINT "REGISTRA" FOREIGN KEY ("RUT_USUARIO")
	  REFERENCES "TBL_USUARIO" ("RUT_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_ESTADOSOLICITUDPERMISO
--------------------------------------------------------

  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" ADD CONSTRAINT "FK_ASS_3" FOREIGN KEY ("ID_ESTADO")
	  REFERENCES "TBL_ESTADO" ("ID_ESTADO_SOL") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_ESTADOSOLICITUDPERMISO" ADD CONSTRAINT "FK_ASS_4" FOREIGN KEY ("ID_ESTADO")
	  REFERENCES "TBL_SOLICITUDPERMISO" ("ID_SOLICITUD") ON DELETE CASCADE DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_PERMISOUSUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_PERMISOUSUARIO" ADD CONSTRAINT "FK_ASS_5" FOREIGN KEY ("RUT_USUARIO")
	  REFERENCES "TBL_USUARIO" ("RUT_USUARIO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_PERMISOUSUARIO" ADD CONSTRAINT "FK_ASS_6" FOREIGN KEY ("ID_PERMISO")
	  REFERENCES "TBL_PERMISO" ("ID_PERMISO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REGISTROFUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "TBL_REGISTROFUNCIONARIO" ADD CONSTRAINT "FK_ASS_10" FOREIGN KEY ("RUT_FUNCIONARIO")
	  REFERENCES "TBL_FUNCIONARIO" ("RUT_FUNCIONARIO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_REGISTROFUNCIONARIO" ADD CONSTRAINT "FK_ASS_11" FOREIGN KEY ("ID_REGISTRO")
	  REFERENCES "TBL_REGISTROASISTENCIA" ("ID_REGISTRO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_ROLUSUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_ROLUSUARIO" ADD CONSTRAINT "FK_ASS_7" FOREIGN KEY ("RUT_USUARIO")
	  REFERENCES "TBL_USUARIO" ("RUT_USUARIO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_ROLUSUARIO" ADD CONSTRAINT "FK_ASS_8" FOREIGN KEY ("ID_ROL")
	  REFERENCES "TBL_ROL" ("ID_ROL") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_SOLICITUDPERMISO
--------------------------------------------------------

  ALTER TABLE "TBL_SOLICITUDPERMISO" ADD CONSTRAINT "CALIFICA" FOREIGN KEY ("MOTIVO")
	  REFERENCES "TBL_PERMISO" ("ID_PERMISO") ENABLE;
  ALTER TABLE "TBL_SOLICITUDPERMISO" ADD CONSTRAINT "GENERA" FOREIGN KEY ("RUT_USUARIO")
	  REFERENCES "TBL_USUARIO" ("RUT_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO
--------------------------------------------------------

  ALTER TABLE "TBL_USUARIO" ADD CONSTRAINT "PERTENECE" FOREIGN KEY ("ID_UNIDAD_INTERNA")
	  REFERENCES "TBL_UNIDADINTERNA" ("ID_UNIDAD_INTERNA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIOMODULO
--------------------------------------------------------

  ALTER TABLE "TBL_USUARIOMODULO" ADD CONSTRAINT "FK_ASS_1" FOREIGN KEY ("RUT_USUARIO")
	  REFERENCES "TBL_USUARIO" ("RUT_USUARIO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_USUARIOMODULO" ADD CONSTRAINT "FK_ASS_2" FOREIGN KEY ("ID_MODULO")
	  REFERENCES "TBL_MODULO" ("ID_MODULO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROL_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ROL_BIR" 
BEFORE INSERT ON tbl_rol 
FOR EACH ROW
BEGIN
  SELECT rol_seq.NEXTVAL
  INTO   :new.ID_ROL
  FROM   dual;
END;
/
ALTER TRIGGER "ROL_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_AUTENTIFICACION_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_AUTENTIFICACION_BIR" 
BEFORE INSERT ON tbl_autentificacion 
FOR EACH ROW
BEGIN
  SELECT tbl_autentificacion_seq.nextval
  INTO   :NEW.id_autentificacion
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_AUTENTIFICACION_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_ESTADO_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_ESTADO_BIR" 
BEFORE INSERT ON tbl_estado 
FOR EACH ROW
BEGIN
  SELECT tbl_estado_seq.nextval
  INTO   :NEW.id_estado_sol
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_ESTADO_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_MODULO_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_MODULO_BIR" 
BEFORE INSERT ON tbl_modulo 
FOR EACH ROW
BEGIN
  SELECT tbl_modulo_seq.nextval
  INTO   :NEW.id_modulo
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_MODULO_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_PERMISO_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_PERMISO_BIR" 
BEFORE INSERT ON tbl_permiso 
FOR EACH ROW
BEGIN
  SELECT tbl_permiso_seq.nextval
  INTO   :NEW.id_permiso
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_PERMISO_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_REGISTROASISTENCIA_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_REGISTROASISTENCIA_BIR" 
BEFORE INSERT ON tbl_registroasistencia 
FOR EACH ROW
BEGIN
  SELECT tbl_registroasistencia_seq.nextval
  INTO   :NEW.id_registro
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_REGISTROASISTENCIA_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_SOLICITUDPERMISO_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_SOLICITUDPERMISO_BIR" 
BEFORE INSERT ON tbl_solicitudpermiso 
FOR EACH ROW
BEGIN
  SELECT tbl_solicitudpermiso_seq.nextval
  INTO   :NEW.id_solicitud
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_SOLICITUDPERMISO_BIR" DISABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_UNIDADINTERNA_BIR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_UNIDADINTERNA_BIR" 
BEFORE INSERT ON tbl_unidadinterna 
FOR EACH ROW
BEGIN
  SELECT tbl_unidadinterna_seq.nextval
  INTO   :NEW.id_unidad_interna
  FROM   dual;
END;
/
ALTER TRIGGER "TBL_UNIDADINTERNA_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Package PKG_LOGIN_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_LOGIN_USUARIO" AS 
  FUNCTION fn_autenticacion(rut_usuario_fn tbl_usuario.rut_usuario%TYPE, password_sp tbl_usuario.PASSWORD%TYPE) RETURN NUMBER;
  FUNCTION fn_cifrar_password(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, password_sp tbl_usuario.PASSWORD%TYPE) RETURN tbl_usuario.PASSWORD%TYPE;
  PROCEDURE sp_registrar_autenticacion(rut_usuario_sp tbl_usuario.rut_usuario%TYPE);
  PROCEDURE sp_reestablecer_clave(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, password_nueva_sp tbl_usuario.PASSWORD%TYPE);
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE;
  var_password_guardada tbl_usuario.PASSWORD%TYPE;
  var_password_cifrada tbl_usuario.PASSWORD%TYPE;
  cantidad NUMBER;
END PKG_LOGIN_USUARIO;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_SOLICITUD
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_SOLICITUD" AS 
  FUNCTION fn_comprobar_diasdisp(rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE, fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE) RETURN NUMBER;
  PROCEDURE sp_insertar_permiso(fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE, rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE);
  PROCEDURE sp_actualizar_permiso(id_permiso tbl_solicitudpermiso.id_solicitud%TYPE, fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE, rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE);
  PROCEDURE sp_eliminar_permiso(id_permiso_sp tbl_solicitudpermiso.id_solicitud%TYPE);
  PROCEDURE sp_actualizar_estadoper(id_estado_sp tbl_estadosolicitudpermiso.ID_ESTADO%TYPE, id_estadonuevo_sp tbl_estadosolicitudpermiso.ID_ESTADO%TYPE, id_permiso_sp tbl_solicitudpermiso.id_solicitud%TYPE, RESPONSABLE_ID_sp tbl_estadosolicitudpermiso.responsable_id%TYPE);
  
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE; 

END PKG_MANTENEDOR_SOLICITUD;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_TBL_ESTADO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_TBL_ESTADO" AS
  FUNCTION fn_devolver_estado_insertar(desc_estado_fn VARCHAR2) RETURN NUMBER;
  FUNCTION fn_existe_id_estado(id_estado_fn tbl_estado.id_estado_sol%type) RETURN NUMBER;
  PROCEDURE sp_insertar_estado(desc_estado_sp VARCHAR2);
  PROCEDURE sp_eliminar_estado(id_estado_sp tbl_estado.id_estado_sol%TYPE);
  PROCEDURE sp_actualizar_estado(id_estado_sp tbl_estado.id_estado_sol%TYPE, desc_estado_sp tbl_estado.desc_estado%TYPE);
  --PROCEDURE sp_asignar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol tbl_rolusuario.id_rol%type);
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE;
END PKG_MANTENEDOR_TBL_ESTADO;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_TBL_MODULO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_TBL_MODULO" AS
  FUNCTION fn_devolver_MODULO_insertar(desc_MODULO_fn VARCHAR2) RETURN NUMBER;
  ------------------------------------------------------------------
  FUNCTION fn_existe_id_MODULO(id_MODULO_fn tbl_MODULO.id_MODULO%TYPE) RETURN NUMBER;
  -------------------------------------------------------------------
  PROCEDURE sp_insertar_MODULO(nombre_MODULO_sp tbl_modulo.desc_modulo%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_MODULO(id_MODULO_sp tbl_MODULO.id_MODULO%TYPE) ;
  -------------------------------------------------------------------
  
  PROCEDURE sp_asignar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_sp tbl_usuariomodulo.id_MODULO%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_actualizar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_nuevo tbl_usuariomodulo.id_MODULO%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_sp tbl_usuariomodulo.id_MODULO%TYPE);
  -------------------------------------------------------------------
  
  PROCEDURE sp_actualizar_MODULO(id_MODULO_sp tbl_MODULO.id_MODULO%TYPE, desc_MODULO_sp tbl_MODULO.desc_MODULO%TYPE) ;
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE;
  
  END PKG_MANTENEDOR_TBL_MODULO;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_TBL_PERMISO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_TBL_PERMISO" AS
  FUNCTION fn_devolver_permiso_insertar(desc_permiso_fn VARCHAR2) RETURN NUMBER;
  FUNCTION fn_existe_id_permiso(id_permiso_fn tbl_permiso.id_permiso%type) RETURN NUMBER;
  PROCEDURE sp_insertar_permiso(desc_permiso_sp VARCHAR2);
  PROCEDURE sp_eliminar_permiso(id_permiso_sp tbl_permiso.id_permiso%TYPE);
  PROCEDURE sp_actualizar_permiso(id_permiso_sp tbl_permiso.id_permiso%TYPE, desc_permiso_sp tbl_permiso.recurso_legal%type);
  
  PROCEDURE sp_asignar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE, dias_aut_sp tbl_permisousuario.dias_autorizados%TYPE, comentarios_sp tbl_permisousuario.comentarios%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_actualizar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE, dias_aut_nuevo tbl_permisousuario.dias_autorizados%TYPE, comentarios_nuevo tbl_permisousuario.comentarios%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE);
  -------------------------------------------------------------------
  
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE;
END PKG_MANTENEDOR_TBL_PERMISO;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_TBL_ROL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_TBL_ROL" AS
  FUNCTION fn_devolver_rol_insertar(desc_rol_fn VARCHAR2) RETURN NUMBER;
  ------------------------------------------------------------------
  FUNCTION fn_existe_id_rol(id_rol_fn tbl_rol.id_rol%TYPE) RETURN NUMBER;
  -------------------------------------------------------------------
  PROCEDURE sp_insertar_rol(nombre_rol_sp tbl_rol.nombre_rol%TYPE, desc_rol tbl_rol.desc_rol%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_rol(id_rol_sp tbl_rol.id_rol%TYPE) ;
  -------------------------------------------------------------------
  
  PROCEDURE sp_asignar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_sp tbl_rolusuario.id_rol%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_actualizar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_nuevo tbl_rolusuario.id_rol%TYPE);
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_sp tbl_rolusuario.id_rol%TYPE);
  -------------------------------------------------------------------
  
  PROCEDURE sp_actualizar_rol(id_rol_sp tbl_rol.id_rol%TYPE, nombre_rol_sp tbl_rol.nombre_rol%TYPE, desc_rol_sp tbl_rol.desc_rol%TYPE) ;
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE;
  
  END PKG_MANTENEDOR_TBL_ROL;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_UINTERNA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_UINTERNA" AS 

  FUNCTION fn_devolver_uinterna(desc_unidadinterna_fn VARCHAR2) RETURN NUMBER;
  FUNCTION fn_existe_id_uinterna(id_unidadinterna_fn tbl_unidadinterna.id_unidad_interna%type) RETURN NUMBER;
  PROCEDURE sp_insertar_uinterna(desc_unidadinterna_sp VARCHAR2);
  PROCEDURE sp_eliminar_uinterna(id_unidadinterna_sp tbl_unidadinterna.id_unidad_interna%TYPE);
  PROCEDURE sp_actualizar_uinterna(id_unidadinterna_sp tbl_unidadinterna.id_unidad_interna%TYPE, desc_unidadinterna_sp tbl_unidadinterna.desc_unidad_interna%TYPE);
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE; 

END PKG_MANTENEDOR_UINTERNA;

/
--------------------------------------------------------
--  DDL for Package PKG_MANTENEDOR_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PKG_MANTENEDOR_USUARIO" AS 
  FUNCTION fn_usuario_existe(rut_usuario_fn tbl_usuario.rut_usuario%TYPE) RETURN NUMBER;
  PROCEDURE sp_agregar_usuario(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, ap_paterno_sp tbl_usuario.ap_paterno%TYPE, ap_materno_sp tbl_usuario.ap_materno%TYPE, nombre_sp tbl_usuario.nombre%TYPE,
  tel_particular_sp tbl_usuario.tel_particular%TYPE, tel_institu_sp tbl_usuario.tel_institucional%TYPE, dir_particu_sp tbl_usuario.dir_particular%TYPE, id_unid_sp tbl_usuario.id_unidad_interna%TYPE,
  email_sp tbl_usuario.email%TYPE, cargo_sp tbl_usuario.cargo%TYPE);
  
  PROCEDURE sp_actualizar_usuario(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, ap_paterno_new_sp tbl_usuario.ap_paterno%TYPE, ap_materno_new_sp tbl_usuario.ap_materno%TYPE, nombre_new_sp tbl_usuario.nombre%TYPE,
  tel_particular_new_sp tbl_usuario.tel_particular%TYPE, tel_institu_new_sp tbl_usuario.tel_institucional%TYPE, dir_particu_new_sp tbl_usuario.dir_particular%TYPE, id_unid_new_sp tbl_usuario.id_unidad_interna%TYPE,
  email_new_sp tbl_usuario.email%TYPE, cargo_new_sp tbl_usuario.cargo%TYPE);
  
  PROCEDURE sp_eliminar_usuario(rut_usuario_sp tbl_usuario.rut_usuario%TYPE);
  
  exp1 EXCEPTION;
  exp2 EXCEPTION;
  err_code TBL_REG_ERRORES.NOMBRESUBPROGRAMA%TYPE;
  err_msg TBL_REG_ERRORES.NUMEROYMENSAJEDEERROR%TYPE; 

END PKG_MANTENEDOR_USUARIO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_LOGIN_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_LOGIN_USUARIO" AS 
  
  PROCEDURE sp_registrar_autenticacion(rut_usuario_sp tbl_usuario.rut_usuario%TYPE) AS
  BEGIN
    INSERT INTO tbl_autentificacion(FH_AUTENTIFICACION, RUT_USUARIO) VALUES(SYSTIMESTAMP, rut_usuario_sp);
  END sp_registrar_autenticacion;
  
  ---------------------------------------------------------------------------------------------------------------------------------
  FUNCTION fn_autenticacion(rut_usuario_fn tbl_usuario.rut_usuario%TYPE, password_sp tbl_usuario.PASSWORD%TYPE) RETURN NUMBER AS
  BEGIN
    SELECT count(*) INTO cantidad FROM TBL_USUARIO WHERE rut_usuario=rut_usuario_fn;--usuario: 1 ; password: fidelio1
  IF cantidad>0 THEN
    SELECT PASSWORD INTO var_password_guardada FROM TBL_USUARIO WHERE rut_usuario=rut_usuario_fn;
    var_password_cifrada := fn_cifrar_password(rut_usuario_fn,password_sp);
    IF var_password_guardada=var_password_cifrada THEN
      --sp_registrar_autenticacion(rut_usuario_fn);
      RETURN 1;
    ELSE
      RETURN 0;
    END IF;
  ELSE
    RETURN 0;
  END IF;
  END fn_autenticacion;
  
  ---------------------------------------------------------------------------------------------------------------------------------
  
  FUNCTION fn_cifrar_password(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, password_sp tbl_usuario.PASSWORD%TYPE) RETURN tbl_usuario.PASSWORD%TYPE AS
  v_password tbl_usuario.PASSWORD%TYPE;
  v_hash tbl_usuario.PASSWORD%TYPE;
  BEGIN
    v_hash := '1NXLFKXOZE6VWYPRO3KJW33G8SVZN4';
    v_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5(input_string => password_sp || substr(v_hash,10,13) || rut_usuario_sp ||substr(v_hash, 4,10)));
    RETURN v_password;
  END fn_cifrar_password;
  
  ---------------------------------------------------------------------------------------------------------------------------------
  
  PROCEDURE sp_reestablecer_clave(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, password_nueva_sp tbl_usuario.PASSWORD%TYPE) AS
  BEGIN 
   SELECT count(*) INTO cantidad FROM TBL_USUARIO WHERE rut_usuario=rut_usuario_sp;--usuario: 1 ; password: fidelio
   IF cantidad>0 THEN
    var_password_cifrada := fn_cifrar_password(rut_usuario_sp,password_nueva_sp);
    UPDATE tbl_usuario SET PASSWORD=var_password_cifrada WHERE rut_usuario=rut_usuario_sp;
  ELSE
    RAISE exp1;
  END IF;
  
  EXCEPTION
    WHEN exp1 THEN 
      err_code := 'LOGIN_001';
      err_msg := SUBSTR('NO EXISTE USUARIO PARA REESTABLECER CLAVE', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('NO EXISTE USUARIO PARA REESTABLECER CLAVE');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_reestablecer_clave;

---------------------------------------------------------------------------------------------------------------------------------

END PKG_LOGIN_USUARIO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_SOLICITUD
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_SOLICITUD" AS

  FUNCTION fn_comprobar_diasdisp(rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE, fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE) RETURN NUMBER AS
    var_flag NUMBER;
    var_diasdisp NUMBER;
    var_difdias NUMBER;
  BEGIN
    SELECT DIAS_AUTORIZADOS INTO var_diasdisp FROM TBL_PERMISOUSUARIO WHERE rut_usuario=rut_usuario_sp AND id_permiso=motivo_sp;
    IF var_diasdisp!=0 OR var_diasdisp IS NOT NULL THEN
      SELECT TO_DATE(fec_fin_sp,'DD-MM-YYYY')-TO_DATE(fec_inicio_sp,'DD-MM-YYYY') INTO var_difdias FROM DUAL;
      IF var_diasdisp>=var_difdias THEN
        RETURN 1;
      ELSE
        RETURN 0;
      END IF;
    ELSE
      RETURN 0;
    END IF;
    
    RETURN NULL;
  END fn_comprobar_diasdisp;

  PROCEDURE sp_insertar_permiso(fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE, rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE) AS
    var_flag NUMBER;
    var_dias_dif NUMBER;
    var_id NUMBER;
  BEGIN
    SELECT TO_DATE(fec_fin_sp,'DD-MM-YYYY')-TO_DATE(fec_inicio_sp,'DD-MM-YYYY') INTO var_dias_dif FROM DUAL;
    var_flag := fn_comprobar_diasdisp(rut_usuario_sp, motivo_sp, fec_inicio_sp, fec_fin_sp);
    
    IF var_flag>0 THEN 
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
    WHEN exp1 THEN
      var_id:=tbl_solicitudpermiso_seq.nextval;
      INSERT INTO tbl_solicitudpermiso(id_solicitud, fecha_inicio, fecha_fin_sol, rut_usuario, motivo) VALUES (var_id, fec_inicio_sp, fec_fin_sp,rut_usuario_sp, motivo_sp);
      
      INSERT INTO tbl_estadosolicitudpermiso(id_estado, id_solicitudpermiso, fh_estado, responsable_id) VALUES(1,var_id,SYSTIMESTAMP,0); -- VALOR POR DEFECTO DE LA SOLICITUD
      UPDATE tbl_permisousuario SET dias_autorizados=dias_autorizados-var_dias_dif-1 WHERE rut_usuario=rut_usuario_sp AND id_permiso=motivo_sp;
      dbms_output.put_line('Solicitud_ingresada'); 
    WHEN exp2 THEN 
      err_code := 'tbl_solicitudpermiso_001';
      err_msg := SUBSTR('USUARIO SOBREPASA DIAS AUTORIZADOS', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Sobrepasa los dias autorizados');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_insertar_permiso;
---------------------------------------------------------------------------------------------------------------------
  PROCEDURE sp_actualizar_permiso(id_permiso tbl_solicitudpermiso.id_solicitud%TYPE, fec_inicio_sp tbl_solicitudpermiso.fecha_inicio%TYPE, fec_fin_sp tbl_solicitudpermiso.fecha_fin_sol%TYPE, rut_usuario_sp tbl_solicitudpermiso.rut_usuario%TYPE, motivo_sp tbl_solicitudpermiso.motivo%TYPE) AS
    var_flag NUMBER;
    var_ult_reg NUMBER;
    var_dias_dif NUMBER;
  BEGIN
    SELECT TO_DATE(fec_fin_sp,'DD-MM-YYYY')-TO_DATE(fec_inicio_sp,'DD-MM-YYYY') INTO var_dias_dif FROM DUAL;
    var_flag := fn_comprobar_diasdisp(rut_usuario_sp, motivo_sp, fec_inicio_sp, fec_fin_sp);
    
    IF var_flag>0 THEN 
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
    WHEN exp1 THEN
      UPDATE tbl_solicitudpermiso SET fecha_inicio=fec_inicio_sp, fecha_fin_sol=fec_fin_sp, rut_usuario=rut_usuario_sp WHERE id_solicitud=id_permiso;
      --INSERT INTO tbl_solicitudpermiso(fecha_inicio, fecha_fin_sol, rut_usuario, motivo) VALUES (fec_inicio_sp, fec_fin_sp,rut_usuario_sp, motivo_sp);
      --UPDATE tbl_permisousuario SET dias_autorizados=dias_autorizados-var_dias_dif WHERE rut_usuario=rut_usuario_sp AND id_permiso=motivo_sp; QUEDA PENDIENTE PARA LA TERCERA ITERACION!!!!!!!!!!!!!!!!!!
      dbms_output.put_line('Solicitud_ingresada'); 
    WHEN exp2 THEN 
      err_code := 'tbl_solicitudpermiso_001';
      err_msg := SUBSTR('USUARIO SOBREPASA DIAS AUTORIZADOS', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Sobrepasa los dias autorizados');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_permiso;

  PROCEDURE sp_eliminar_permiso(id_permiso_sp tbl_solicitudpermiso.id_solicitud%TYPE) AS
    var_existe NUMBER;
  BEGIN
    SELECT COUNT(*) INTO var_existe FROM tbl_solicitudpermiso WHERE id_solicitud=id_permiso_sp;
    IF var_existe>0 THEN
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_solicitudpermiso WHERE id_solicitud=id_permiso_sp;
          DELETE FROM tbl_estadosolicitudpermiso WHERE id_solicitudpermiso=id_permiso_sp;
         dbms_output.put_line('Solicitud_eliminada'); 
        WHEN exp2 THEN 
          err_code := 'TBL_SOLICITUDPERMISO_SP';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Solicitud_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_permiso;

  PROCEDURE sp_actualizar_estadoper(id_estado_sp tbl_estadosolicitudpermiso.ID_ESTADO%TYPE, id_estadonuevo_sp tbl_estadosolicitudpermiso.ID_ESTADO%TYPE, id_permiso_sp tbl_solicitudpermiso.id_solicitud%TYPE, RESPONSABLE_ID_sp tbl_estadosolicitudpermiso.responsable_id%TYPE) AS
    var_existe NUMBER;
  BEGIN
    SELECT COUNT(*) INTO var_existe FROM tbl_estadosolicitudpermiso WHERE id_estado=id_estado_sp and id_solicitudpermiso=id_permiso_sp;
    IF var_existe>0 THEN
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_estadosolicitudpermiso SET id_estado=id_estadonuevo_sp, fh_estado=systimestamp, responsable_id=RESPONSABLE_ID_sp WHERE id_estado=id_estado_sp and id_solicitudpermiso=id_permiso_sp;
         dbms_output.put_line('Estado_solicitud actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_SOLICITUDPERMISO_SP';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Solicitud_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_estadoper;

END PKG_MANTENEDOR_SOLICITUD;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_TBL_ESTADO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_TBL_ESTADO" AS
/*-------------------------------------------------------------------------------- */
  FUNCTION fn_devolver_estado_insertar(desc_estado_fn VARCHAR2) RETURN NUMBER AS
    id_estado_fn NUMBER;
  BEGIN
    id_estado_fn:=0;
    SELECT COUNT(id_estado_sol) INTO id_estado_fn FROM TBL_ESTADO WHERE upper(desc_estado)=upper(desc_estado_fn);
    RETURN id_estado_fn;
  END fn_devolver_estado_insertar;

/*-------------------------------------------------------------------------------- */

  FUNCTION fn_existe_id_estado(id_estado_fn tbl_estado.id_estado_sol%TYPE) RETURN NUMBER AS
    existe NUMBER;
  BEGIN
    SELECT COUNT(id_estado_sol) INTO existe FROM TBL_ESTADO WHERE id_estado_sol=id_estado_fn;
    RETURN existe;
  END fn_existe_id_estado;

/*-------------------------------------------------------------------------------- */  
  PROCEDURE sp_insertar_estado(desc_estado_sp VARCHAR2) AS
    id_estado_sp NUMBER;
  BEGIN
    id_estado_sp:=fn_devolver_estado_insertar(desc_estado_sp);
    IF id_estado_sp = 0 THEN
      raise exp1;
    ELSE 
      raise exp2;
    END IF;
  
  
  EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_estado(desc_estado) VALUES (desc_estado_sp);
      dbms_output.put_line('Estado_ingresado'); 
    WHEN exp2 THEN 
      err_code := 'TBL_ESTADO_001';
      err_msg := SUBSTR('YA EXISTE DESCRIPCION SIMILAR', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Estado_ya_existe');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    END sp_insertar_estado;
 /*-------------------------------------------------------------------------------- */   
    
    PROCEDURE sp_eliminar_estado(id_estado_sp tbl_estado.id_estado_sol%TYPE) AS
    
    BEGIN
      IF fn_existe_id_estado(id_estado_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
    
      EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_estado WHERE id_estado_sol=id_estado_sp;
         dbms_output.put_line('Estado_eliminado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_ESTADO_003';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Estado_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    END sp_eliminar_estado;
    
/*-------------------------------------------------------------------------------- */   

  PROCEDURE sp_actualizar_estado(id_estado_sp tbl_estado.id_estado_sol%TYPE, desc_estado_sp tbl_estado.desc_estado%type) AS
  
  BEGIN
      IF fn_existe_id_estado(id_estado_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
      
      EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_estado SET tbl_estado.desc_estado=desc_estado_sp WHERE id_estado_sol=id_estado_sp;
         dbms_output.put_line('Estado_actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_ESTADO_002';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Estado_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_actualizar_estado;

END PKG_MANTENEDOR_TBL_ESTADO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_TBL_MODULO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_TBL_MODULO" AS

  FUNCTION fn_devolver_MODULO_insertar(desc_MODULO_fn VARCHAR2) RETURN NUMBER AS
    id_modulo_fn NUMBER;
  BEGIN
    id_modulo_fn:=0;
    SELECT COUNT(id_modulo) INTO id_modulo_fn FROM tbl_modulo WHERE upper(DESC_MODULO)=upper(desc_MODULO_fn);
    RETURN id_modulo_fn;
  END fn_devolver_MODULO_insertar;
---------------------------------------------------------------------------------------------
  FUNCTION fn_existe_id_MODULO(id_MODULO_fn tbl_MODULO.id_MODULO%TYPE) RETURN NUMBER AS
    existe NUMBER;
  BEGIN
    SELECT COUNT(id_modulo) INTO existe FROM tbl_modulo WHERE id_modulo=id_MODULO_fn;
    RETURN existe;
  END fn_existe_id_MODULO;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_insertar_MODULO(nombre_MODULO_sp tbl_modulo.desc_modulo%TYPE) AS
    id_modulo_sp NUMBER;
  BEGIN
    id_modulo_sp:=fn_devolver_MODULO_insertar(nombre_MODULO_sp);--Puede que dè error al no ser los mismos tipos de datos
    IF id_modulo_sp = 0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
  
  EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_modulo(desc_modulo) VALUES (nombre_MODULO_sp);
      dbms_output.put_line('Modulo_ingresado'); 
    WHEN exp2 THEN 
      err_code := 'TBL_MODULO_001';
      err_msg := SUBSTR('YA EXISTE DESCRIPCION SIMILAR', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Modulo_ya_existe');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_insertar_MODULO;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_eliminar_MODULO(id_MODULO_sp tbl_MODULO.id_MODULO%TYPE)  AS
  BEGIN
    IF fn_existe_id_MODULO(id_MODULO_sp)>0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_modulo WHERE id_MODULO=id_MODULO_sp;
         dbms_output.put_line('Modulo_eliminado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_MODULO_003';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Rol_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_MODULO;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_asignar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_sp tbl_usuariomodulo.id_MODULO%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_modulo NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_usuario WHERE rut_usuario=rut_usuario_sp;
    IF v_cantidad_usuario>0 THEN
      SELECT count(tbl_modulo.id_modulo) INTO v_cantidad_modulo FROM tbl_modulo WHERE id_modulo=id_MODULO_sp;
      IF v_cantidad_modulo>0 THEN
        INSERT INTO tbl_usuariomodulo(tbl_usuariomodulo.rut_usuario,tbl_usuariomodulo.id_modulo) VALUES(rut_usuario_sp, id_MODULO_sp);-- CAMBIAR
      ELSE
        RAISE exp2;
      END IF;
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'TBL_USUARIOMODULO_001';
          err_msg := SUBSTR('NO EXISTE RUT PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ASIGNAR');
        WHEN exp2 THEN 
          err_code := 'TBL_USUARIOMODULO_002';
          err_msg := SUBSTR('NO EXISTE ID_MODULO PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE ID_MODULO PARA ASIGNAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_asignar_MODULO_usuario;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_actualizar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_nuevo tbl_usuariomodulo.id_MODULO%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_modulo NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_usuariomodulo WHERE rut_usuario=rut_usuario_sp;
    IF v_cantidad_usuario>0 THEN
      SELECT count(id_modulo) INTO v_cantidad_modulo FROM tbl_modulo WHERE id_modulo=id_modulo_nuevo;
      IF v_cantidad_modulo>0 THEN
        UPDATE tbl_usuariomodulo SET id_modulo=id_modulo_nuevo WHERE rut_usuario=rut_usuario_sp;-- CAMBIAR
      ELSE
        RAISE exp2;
      END IF;
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'tbl_usuariomodulo_001';
          err_msg := SUBSTR('NO EXISTE RUT PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ACTUALIZAR');
        WHEN exp2 THEN 
          err_code := 'tbl_usuariomodulo_002';
          err_msg := SUBSTR('NO EXISTE id_modulo PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE id_modulo PARA ACTUALIZAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_MODULO_usuario;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_eliminar_MODULO_usuario(rut_usuario_sp tbl_usuariomodulo.rut_usuario%TYPE, id_MODULO_sp tbl_usuariomodulo.id_MODULO%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_modulo NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_usuariomodulo WHERE rut_usuario=rut_usuario_sp AND id_modulo=id_modulo_sp;
    IF v_cantidad_usuario>0 THEN
        DELETE FROM tbl_usuariomodulo WHERE rut_usuario=rut_usuario_sp AND id_modulo=id_modulo_sp;-- CAMBIAR
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'tbl_usuariomodulo_001';
          err_msg := SUBSTR('NO EXISTE RUT-MODULO PARA ELIMINAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ELIMINAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_MODULO_usuario;
---------------------------------------------------------------------------------------------
  PROCEDURE sp_actualizar_MODULO(id_MODULO_sp tbl_MODULO.id_MODULO%TYPE, desc_MODULO_sp tbl_MODULO.desc_MODULO%TYPE)  AS
    BEGIN
    IF fn_existe_id_MODULO(id_MODULO_sp)>0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_modulo SET tbl_modulo.desc_modulo=desc_MODULO_sp WHERE id_modulo=id_MODULO_sp;
         dbms_output.put_line('Modulo_actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_MODULO_002';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Modulo_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_MODULO;

END PKG_MANTENEDOR_TBL_MODULO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_TBL_PERMISO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_TBL_PERMISO" AS
/*-------------------------------------------------------------------------------- */
  FUNCTION fn_devolver_permiso_insertar(desc_permiso_fn VARCHAR2) RETURN NUMBER AS
    id_permiso_fn NUMBER;
  BEGIN
    id_permiso_fn:=0;
    SELECT COUNT(id_permiso) INTO id_permiso_fn FROM TBL_PERMISO WHERE upper(recurso_legal)=upper(desc_permiso_fn);
    RETURN id_permiso_fn;
  END fn_devolver_permiso_insertar;

/*-------------------------------------------------------------------------------- */

  FUNCTION fn_existe_id_permiso(id_permiso_fn tbl_permiso.id_permiso%type) RETURN NUMBER AS
    existe NUMBER;
  BEGIN
    SELECT COUNT(id_permiso) INTO existe FROM TBL_PERMISO WHERE id_permiso=id_permiso_fn;
    RETURN existe;
  END fn_existe_id_permiso;

/*-------------------------------------------------------------------------------- */  
  PROCEDURE sp_insertar_permiso(desc_permiso_sp VARCHAR2) AS
    id_permiso_sp NUMBER;
  BEGIN
    id_permiso_sp:=fn_devolver_permiso_insertar(desc_permiso_sp);
    IF id_permiso_sp = 0 THEN
      raise exp1;
    ELSE 
      raise exp2;
    END IF;
  
  
  EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_permiso(recurso_legal) VALUES (desc_permiso_sp);
      dbms_output.put_line('Permiso_ingresado'); 
    WHEN exp2 THEN 
      err_code := 'TBL_PERMISO_001';
      err_msg := SUBSTR('YA EXISTE DESCRIPCION SIMILAR', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Permiso_ya_existe');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    END sp_insertar_permiso;
 /*-------------------------------------------------------------------------------- */   
    
    PROCEDURE sp_eliminar_permiso(id_permiso_sp tbl_permiso.id_permiso%TYPE) AS
    BEGIN
      IF fn_existe_id_permiso(id_permiso_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
    
      EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_permiso WHERE id_permiso=id_permiso_sp;
         dbms_output.put_line('Permiso_eliminado'); 
        WHEN exp2 THEN 
         err_code := 'TBL_PERMISO_003';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
         
         dbms_output.put_line('Permiso_no_existe');
         
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
        
    END sp_eliminar_permiso;
    
/*-------------------------------------------------------------------------------- */   

  PROCEDURE sp_actualizar_permiso(id_permiso_sp tbl_permiso.id_permiso%TYPE, desc_permiso_sp tbl_permiso.recurso_legal%type) AS
  
  BEGIN
      IF fn_existe_id_permiso(id_permiso_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
      
      EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_permiso SET tbl_permiso.recurso_legal=desc_permiso_sp WHERE id_permiso=id_permiso_sp;
         dbms_output.put_line('Permiso_actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_PERMISO_002';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Permiso_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_actualizar_permiso;
  ------------------------------------------------------------------------------AA
  PROCEDURE sp_asignar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE, dias_aut_sp tbl_permisousuario.dias_autorizados%TYPE, comentarios_sp tbl_permisousuario.comentarios%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_permiso NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_usuario WHERE rut_usuario=rut_usuario_sp;
    IF v_cantidad_usuario>0 THEN
      SELECT count(id_permiso) INTO v_cantidad_permiso FROM tbl_permiso WHERE id_permiso=id_permiso_sp;
      IF v_cantidad_permiso>0 THEN
        INSERT INTO tbl_permisousuario(rut_usuario,id_permiso,DIAS_AUTORIZADOS,comentarios) VALUES(rut_usuario_sp, id_permiso_sp, dias_aut_sp, comentarios_sp);-- CAMBIAR
      ELSE
        RAISE exp2;
      END IF;
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'tbl_permisousuario_001';
          err_msg := SUBSTR('NO EXISTE RUT PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ASIGNAR');
        WHEN exp2 THEN 
          err_code := 'tbl_permisousuario_002';
          err_msg := SUBSTR('NO EXISTE id_permiso PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE id_permiso PARA ASIGNAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_asignar_permiso_usuario;
  -------------------------------------------------------------------
  PROCEDURE sp_actualizar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE, dias_aut_nuevo tbl_permisousuario.dias_autorizados%TYPE, comentarios_nuevo tbl_permisousuario.comentarios%TYPE) AS
    v_cantidad_usuario_permiso NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario_permiso FROM tbl_permisousuario WHERE rut_usuario=rut_usuario_sp and id_permiso=id_permiso_sp;
    IF v_cantidad_usuario_permiso>0 THEN
        UPDATE tbl_permisousuario SET dias_autorizados=DIAS_AUT_NUEVO, comentarios=COMENTARIOS_NUEVO WHERE rut_usuario=rut_usuario_sp AND id_permiso=id_permiso_sp;-- CAMBIAR
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'tbl_permisousuario_001';
          err_msg := SUBSTR('NO EXISTE RUT-PERMISO PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT-PERMISO PARA ACTUALIZAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  
  END sp_actualizar_permiso_usuario;
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_permiso_usuario(rut_usuario_sp tbl_permisousuario.rut_usuario%TYPE, id_permiso_sp tbl_permisousuario.id_permiso%TYPE) AS
    v_cantidad_usuario_permiso NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario_permiso FROM tbl_permisousuario WHERE rut_usuario=rut_usuario_sp and id_permiso=id_permiso_sp;
    IF v_cantidad_usuario_permiso>0 THEN
        DELETE FROM tbl_permisousuario WHERE rut_usuario=rut_usuario_sp AND id_permiso=id_permiso_sp;-- CAMBIAR
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'tbl_permisousuario_001';
          err_msg := SUBSTR('NO EXISTE RUT-PERMISO PARA ELIMINAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT-PERMISO PARA ELIMINAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_eliminar_permiso_usuario;
  
  
  -------------------------------------------------------------------
  

END PKG_MANTENEDOR_TBL_PERMISO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_TBL_ROL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_TBL_ROL" AS
  FUNCTION fn_devolver_rol_insertar(desc_rol_fn VARCHAR2) RETURN NUMBER AS
    id_rol_fn NUMBER;
  BEGIN
    id_rol_fn:=0;
    SELECT COUNT(id_rol) INTO id_rol_fn FROM TBL_ROL WHERE upper(NOMBRE_ROL)=upper(desc_rol_fn);
    RETURN id_rol_fn;
  END fn_devolver_rol_insertar;
  ------------------------------------------------------------------
  FUNCTION fn_existe_id_rol(id_rol_fn tbl_rol.id_rol%TYPE) RETURN NUMBER AS
    existe NUMBER;
  BEGIN
    SELECT COUNT(id_rol) INTO existe FROM TBL_ROL WHERE id_rol=id_rol_fn;
    RETURN existe;
  END fn_existe_id_rol;
  -------------------------------------------------------------------
  PROCEDURE sp_insertar_rol(nombre_rol_sp tbl_rol.nombre_rol%TYPE, desc_rol tbl_rol.desc_rol%TYPE) AS
    id_rol_sp NUMBER;
  BEGIN
    id_rol_sp:=fn_devolver_rol_insertar(nombre_rol_sp);--Puede que dè error al no ser los mismos tipos de datos
    IF id_rol_sp = 0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
  
  EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_rol(nombre_rol, desc_rol) VALUES (nombre_rol_sp, desc_rol);
      dbms_output.put_line('Rol_ingresado'); 
    WHEN exp2 THEN 
      err_code := 'TBL_ROL_001';
      err_msg := SUBSTR('YA EXISTE DESCRIPCION SIMILAR', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('Rol_ya_existe');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_insertar_rol;
  -------------------------------------------------------------------
  PROCEDURE sp_eliminar_rol(id_rol_sp tbl_rol.id_rol%TYPE) AS
  
  BEGIN
    IF fn_existe_id_rol(id_rol_sp)>0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_rol WHERE id_rol=id_rol_sp;
         dbms_output.put_line('Rol_eliminado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_ROL_003';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Rol_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_rol;
  -------------------------------------------------------------------
  PROCEDURE sp_actualizar_rol(id_rol_sp tbl_rol.id_rol%TYPE, nombre_rol_sp tbl_rol.nombre_rol%TYPE, desc_rol_sp tbl_rol.desc_rol%TYPE) AS
    
  BEGIN
    IF fn_existe_id_rol(id_rol_sp)>0 THEN
      raise exp1;
    ELSE
      raise exp2;
    END IF;
    
    EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_rol SET tbl_rol.nombre_rol=nombre_rol_sp, desc_rol=desc_rol_sp WHERE id_rol=id_rol_sp;
         dbms_output.put_line('Rol_actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_ROL_002';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('Rol_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_rol;
  
  PROCEDURE sp_asignar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_sp tbl_rolusuario.id_rol%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_rol NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_usuario WHERE rut_usuario=rut_usuario_sp;
    IF v_cantidad_usuario>0 THEN
      SELECT count(id_rol) INTO v_cantidad_rol FROM tbl_rol WHERE id_rol=id_rol_sp;
      IF v_cantidad_rol>0 THEN
        INSERT INTO tbl_rolusuario(rut_usuario,id_rol) VALUES(rut_usuario_sp, id_rol_sp);-- CAMBIAR
      ELSE
        RAISE exp2;
      END IF;
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'TBL_ROLUSUARIO_001';
          err_msg := SUBSTR('NO EXISTE RUT PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ASIGNAR');
        WHEN exp2 THEN 
          err_code := 'TBL_ROLUSUARIO_002';
          err_msg := SUBSTR('NO EXISTE ID_ROL PARA ASIGNAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE ID_ROL PARA ASIGNAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_asignar_rol_usuario;
  
  PROCEDURE sp_actualizar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_nuevo tbl_rolusuario.id_rol%TYPE) AS
    v_cantidad_usuario NUMBER;
    v_cantidad_rol NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario FROM tbl_rolusuario WHERE rut_usuario=rut_usuario_sp;
    IF v_cantidad_usuario>0 THEN
      SELECT count(id_rol) INTO v_cantidad_rol FROM tbl_rol WHERE id_rol=id_rol_nuevo;
      IF v_cantidad_rol>0 THEN
        UPDATE tbl_rolusuario SET id_rol=id_rol_nuevo WHERE rut_usuario=rut_usuario_sp;-- CAMBIAR
      ELSE
        RAISE exp2;
      END IF;
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'TBL_ROLUSUARIO_001';
          err_msg := SUBSTR('NO EXISTE RUT PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ACTUALIZAR');
        WHEN exp2 THEN 
          err_code := 'TBL_ROLUSUARIO_002';
          err_msg := SUBSTR('NO EXISTE ID_ROL PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE ID_ROL PARA ACTUALIZAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  
  END sp_actualizar_rol_usuario;
  
  PROCEDURE sp_eliminar_rol_usuario(rut_usuario_sp tbl_rolusuario.rut_usuario%TYPE, id_rol_sp tbl_rolusuario.id_rol%TYPE) AS
    v_cantidad_usuario_rol NUMBER;
    v_cantidad_rol NUMBER;
  BEGIN
    SELECT COUNT(rut_usuario) INTO v_cantidad_usuario_rol FROM tbl_rolusuario WHERE rut_usuario=rut_usuario_sp AND id_rol=id_rol_sp;
    IF v_cantidad_usuario_rol>0 THEN
        DELETE FROM tbl_rolusuario WHERE rut_usuario=rut_usuario_sp AND id_rol=id_rol_sp;-- CAMBIAR
    ELSE  
      RAISE exp1;
    END IF;
    
  EXCEPTION
        WHEN exp1 THEN
          err_code := 'TBL_ROLUSUARIO_001';
          err_msg := SUBSTR('NO EXISTE RUT-ROL PARA ELIMINAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('NO EXISTE RUT PARA ELIMINAR');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_rol_usuario;
  
  
END PKG_MANTENEDOR_TBL_ROL;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_UINTERNA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_UINTERNA" AS

  FUNCTION fn_devolver_uInterna(desc_unidadinterna_fn VARCHAR2) RETURN NUMBER AS
  id_unidadinterna_fn NUMBER;
  BEGIN
    id_unidadinterna_fn:=0;
    SELECT COUNT(id_unidad_interna) INTO id_unidadinterna_fn FROM TBL_unidadinterna WHERE upper(desc_unidad_interna)=upper(desc_unidadinterna_fn);
    RETURN id_unidadinterna_fn;
  END fn_devolver_uInterna;
---------------------------------------------------------------------------------------------------------
  FUNCTION fn_existe_id_uinterna(id_unidadinterna_fn tbl_unidadinterna.id_unidad_interna%type) RETURN NUMBER AS
    existe NUMBER;
  BEGIN
    SELECT COUNT(id_unidad_interna) INTO existe FROM TBL_unidadinterna WHERE id_unidad_interna=id_unidadinterna_fn;
    RETURN existe;
  END fn_existe_id_uinterna;
---------------------------------------------------------------------------------------------------------
  PROCEDURE sp_insertar_uinterna(desc_unidadinterna_sp VARCHAR2) AS
  id_unidadinterna_sp NUMBER;
  BEGIN
    id_unidadinterna_sp:=fn_devolver_uInterna(desc_unidadinterna_sp);
    IF id_unidadinterna_sp = 0 THEN
      raise exp1;
    ELSE 
      raise exp2;
    END IF;
  
  
  EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_unidadinterna(desc_unidad_interna) VALUES (desc_unidadinterna_sp);
      dbms_output.put_line('unidadinterna_ingresado'); 
    WHEN exp2 THEN 
      err_code := 'TBL_unidadinterna_001';
      err_msg := SUBSTR('YA EXISTE DESCRIPCION SIMILAR', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('unidadinterna_ya_existe');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    END sp_insertar_uinterna;
---------------------------------------------------------------------------------------------------------
  PROCEDURE sp_eliminar_uinterna(id_unidadinterna_sp tbl_unidadinterna.id_unidad_interna%TYPE) AS
  BEGIN
      IF fn_existe_id_uinterna(id_unidadinterna_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
    
      EXCEPTION
        WHEN exp1 THEN
          DELETE FROM tbl_unidadinterna WHERE id_unidad_interna=id_unidadinterna_sp;
         dbms_output.put_line('unidadinterna_eliminado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_unidadinterna_003';
          err_msg := SUBSTR('NO EXISTE ID PARA ELIMINAR', 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('unidadinterna_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror )
          VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_eliminar_uinterna;
---------------------------------------------------------------------------------------------------------
  PROCEDURE sp_actualizar_uinterna(id_unidadinterna_sp tbl_unidadinterna.id_unidad_interna%TYPE, desc_unidadinterna_sp tbl_unidadinterna.desc_unidad_interna%TYPE) AS
  BEGIN
      IF fn_existe_id_uinterna(id_unidadinterna_sp)>0 THEN
        raise exp1;
      ELSE  
        raise exp2;
      END IF;
      
      EXCEPTION
        WHEN exp1 THEN
          UPDATE tbl_unidadinterna SET tbl_unidadinterna.desc_unidad_interna=desc_unidadinterna_sp WHERE id_unidad_interna=id_unidadinterna_sp;
         dbms_output.put_line('unidadinterna_actualizado'); 
        WHEN exp2 THEN 
          err_code := 'TBL_unidadinterna_002';
          err_msg := SUBSTR('NO EXISTE ID PARA ACTUALIZAR', 1, 200); 
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
          dbms_output.put_line('unidadinterna_no_existe');
        WHEN OTHERS THEN
          err_code := SQLCODE;
          err_msg := SUBSTR(SQLERRM, 1, 200);
          INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
  END sp_actualizar_uinterna;
---------------------------------------------------------------------------------------------------------
END PKG_MANTENEDOR_UINTERNA;

/
--------------------------------------------------------
--  DDL for Package Body PKG_MANTENEDOR_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PKG_MANTENEDOR_USUARIO" AS

  FUNCTION fn_usuario_existe(rut_usuario_fn tbl_usuario.rut_usuario%TYPE) RETURN NUMBER AS
    var_existe NUMBER;
  BEGIN
    SELECT count(rut_usuario) INTO var_existe FROM tbl_usuario WHERE rut_usuario=rut_usuario_fn;
    
    IF var_existe>0 THEN 
      RETURN 1;
    ELSE
      RETURN 0;
    END IF;
  END fn_usuario_existe;

  PROCEDURE sp_agregar_usuario (rut_usuario_sp tbl_usuario.rut_usuario%TYPE, ap_paterno_sp tbl_usuario.ap_paterno%TYPE, ap_materno_sp tbl_usuario.ap_materno%TYPE, nombre_sp tbl_usuario.nombre%TYPE,
  tel_particular_sp tbl_usuario.tel_particular%TYPE, tel_institu_sp tbl_usuario.tel_institucional%TYPE, dir_particu_sp tbl_usuario.dir_particular%TYPE, id_unid_sp tbl_usuario.id_unidad_interna%TYPE,
  email_sp tbl_usuario.email%TYPE, cargo_sp tbl_usuario.cargo%TYPE) AS
    var_cantidad NUMBER;
  BEGIN
    var_cantidad:=fn_usuario_existe(rut_usuario_sp);
    IF var_cantidad=0 THEN
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
    WHEN exp1 THEN
      INSERT INTO tbl_usuario
      (rut_usuario, ap_paterno, ap_materno, nombre, tel_particular, tel_institucional, dir_particular, id_unidad_interna, email, cargo, PASSWORD )VALUES (
      rut_usuario_sp, ap_paterno_sp, ap_materno_sp, nombre_sp, tel_particular_sp, tel_institu_sp, dir_particu_sp, id_unid_sp,  email_sp, cargo_sp, pkg_login_usuario.fn_cifrar_password(rut_usuario_sp,rut_usuario_sp)/*POR DEFECTO, LA CLAVE SERÁ EL RUT*/);
      INSERT INTO tbl_permisousuario(rut_usuario, id_permiso, dias_autorizados, comentarios) VALUES(rut_usuario_sp,1001,6,'POR_DEFECTO');
      INSERT INTO tbl_permisousuario(rut_usuario, id_permiso, dias_autorizados, comentarios) VALUES(rut_usuario_sp,1002,7,'POR_DEFECTO');
      INSERT INTO tbl_permisousuario(rut_usuario, id_permiso, dias_autorizados, comentarios) VALUES(rut_usuario_sp,1003,0,'POR_DEFECTO');
      INSERT INTO tbl_permisousuario(rut_usuario, id_permiso, dias_autorizados, comentarios) VALUES(rut_usuario_sp,1004,0,'POR_DEFECTO');
      
      dbms_output.put_line('USUARIO_INGRESADO'); 
    WHEN exp2 THEN 
      err_code := 'tbl_usuario_001';
      err_msg := SUBSTR('USUARIO YA EXISTE EN EL SISTEMA', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('USUARIO YA EXISTE');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    
    
  END sp_agregar_usuario;

  PROCEDURE sp_actualizar_usuario(rut_usuario_sp tbl_usuario.rut_usuario%TYPE, ap_paterno_new_sp tbl_usuario.ap_paterno%TYPE, ap_materno_new_sp tbl_usuario.ap_materno%TYPE, nombre_new_sp tbl_usuario.nombre%TYPE,
  tel_particular_new_sp tbl_usuario.tel_particular%TYPE, tel_institu_new_sp tbl_usuario.tel_institucional%TYPE, dir_particu_new_sp tbl_usuario.dir_particular%TYPE, id_unid_new_sp tbl_usuario.id_unidad_interna%TYPE,
  email_new_sp tbl_usuario.email%TYPE, cargo_new_sp tbl_usuario.cargo%TYPE) AS
    var_cantidad NUMBER;
  BEGIN
    var_cantidad:=fn_usuario_existe(rut_usuario_sp);
    IF var_cantidad=1 THEN
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
    WHEN exp1 THEN
      UPDATE tbl_usuario SET 
      ap_paterno=ap_paterno_new_sp, ap_materno=ap_materno_new_sp, nombre=nombre_new_sp, tel_particular=tel_particular_new_sp, tel_institucional=tel_institu_new_sp, 
      dir_particular=dir_particu_new_sp, id_unidad_interna=id_unid_new_sp, email=email_new_sp, cargo=cargo_new_sp -- PARA CAMBIAR CLAVE, LLAMAR AL PKG_LOGIN_USUARIO.SP_REESTABLECER_CLAVE!!!!!
      WHERE rut_usuario=rut_usuario_sp;
      dbms_output.put_line('USUARIO_ACTUALIZADO'); 
    WHEN exp2 THEN 
      err_code := 'tbl_usuario_001';
      err_msg := SUBSTR('USUARIO NO EXISTE EN EL SISTEMA', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('USUARIO NO EXISTE');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    
  END sp_actualizar_usuario;

  PROCEDURE sp_eliminar_usuario(rut_usuario_sp tbl_usuario.rut_usuario%TYPE) AS
    var_cantidad NUMBER;
  BEGIN
    var_cantidad:=fn_usuario_existe(rut_usuario_sp);
    IF var_cantidad=1 THEN
      RAISE exp1;
    ELSE
      RAISE exp2;
    END IF;
    
    EXCEPTION
    WHEN exp1 THEN
      DELETE FROM tbl_usuario WHERE rut_usuario=rut_usuario_sp;
      dbms_output.put_line('USUARIO_ELIMINADO'); 
    WHEN exp2 THEN 
      err_code := 'tbl_usuario_001';
      err_msg := SUBSTR('USUARIO NO EXISTE EN EL SISTEMA', 1, 200); 
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
      dbms_output.put_line('USUARIO NO EXISTE');
    WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);
      INSERT INTO tbl_reg_errores(NUMERO_ERROR, NOMBRESUBPROGRAMA, NUMEROYMENSAJEDEERROR, fechahoraerror ) VALUES (SQ_ERROR.NEXTVAL ,err_code, err_msg, SYSTIMESTAMP);
    
  END sp_eliminar_usuario;

END PKG_MANTENEDOR_USUARIO;

/
