/*==============================================================*/
/* Tabla: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
  empresa_id           INT4            not null,
  empresa_nombre       VARCHAR(30)     null,
  empresa_direccion    VARCHAR(30)     null,
  empresa_ciudad       VARCHAR(30)     null,
  empresa_correo       VARCHAR(30)     null,
  empresa_telefono     VARCHAR(30)     null,

  constraint PK_EMPRESA primary key (empresa_id)
);

/*==============================================================*/
/* Tabla: REVISIÓN                                              */
/*==============================================================*/
create table REVISION (
  revision_id                 INT4            not null,
  revision_estadoequipo       VARCHAR(30)     null,
  revision_fecha              DATE            null,
  revision_disponibilidad     VARCHAR(30)     null,

  constraint PK_REVISION primary key (revision_id)
);

/*==============================================================*/
/* Tabla: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
  cliente_id                  INT4            not null,
  cliente_cedula              VARCHAR(20)     null,
  cliente_nombre              VARCHAR(20)     null,
  cliente_apellido            VARCHAR(20)     null,
  cliente_correo              VARCHAR(30)     null,
  cliente_fechanacimiento     DATE            null,
  cliente_telefono            VARCHAR(20)     null,

  constraint PK_CLIENTE primary key (cliente_id)
);

/*==============================================================*/
/* Tabla: REVISIONMOTO                                          */
/*==============================================================*/
create table REVISIONMOTO (
  revisionmoto_id         INT4            not null,
  moto_id                 INT4            not null,
  revisionmoto_fecha      DATE            null,
  revisionmoto_costo      NUMERIC(6,2)    null,
  revisionmoto_pagado     NUMERIC(6,2)    null,
  revisionmoto_estado     VARCHAR(50)     null,

  constraint PK_REVISIONMOTO primary key (revisionmoto_id)
);

/*==============================================================*/
/* Tabla: REPORTEREVISION                                       */
/*==============================================================*/
create table REPORTEREVISION (
  reporterevision_id         INT4            not null,
  revisionmoto_id            INT4            not null,
  reporterevision_fecha      DATE            null,
  reporterevision_danios     VARCHAR(50)     null,

  constraint PK_REPORTEREVISION primary key (reporterevision_id)
);

/*==============================================================*/
/* Tabla: MOTOCICLETA                                           */
/*==============================================================*/
create table MOTOCICLETA (
  moto_id             INT4            not null,
  empleado_id         INT4            not null,
  moto_placa          VARCHAR(10)     null,
  moto_cilindraje     VARCHAR(20)     null,
  moto_anio           DATE            null,
  moto_color          VARCHAR(20)     null,
  moto_reparacion     VARCHAR(20)     null,

  constraint PK_MOTOCICLETA primary key (moto_id)
);

/*==============================================================*/
/* Tabla: LICENCIA                                              */
/*==============================================================*/
create table LICENCIA (
  licencia_id            INT4            not null,
  revision_id            INT4            not null,
  empleado_id            INT4            not null,
  licencia_emision       DATE            null,
  licencia_caducidad     DATE            null,
  licencia_estado        VARCHAR(20)     null,
  licencia_tipo          VARCHAR(20)     null,

  constraint PK_LICENCIA primary key (licencia_id)
);

/*==============================================================*/
/* Tabla: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
  empleado_id            INT4            not null,
  empresa_id             INT4            not null,
  empleado_cedula        VARCHAR(20)     null,
  empleado_nombre        VARCHAR(20)     null,
  empleado_apellido      VARCHAR(20)     null,
  empleado_correo        VARCHAR(20)     null,
  empleado_direccion     VARCHAR(50)     null,
  empleado_celular       VARCHAR(20)     null,
  empleado_tipo          VARCHAR(20)     null,

  constraint PK_EMPLEADO primary key (empleado_id)
);

/*==============================================================*/
/* Tabla: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
  entrega_id           INT4             not null,
  solicitud_id         INT4             not null,
  entrega_tipo         VARCHAR(40)      null,
  entrega_peso         NUMERIC(6,2)     null,
  entrega_fecha        DATE             null,
  entrega_cantidad     INT4             null,
  entrega_valor        NUMERIC(6,2)     null,
  entrega_iva          NUMERIC(6,2)     null,
  entrega_precio       NUMERIC(6,2)     null,
  entrega_pagado       NUMERIC(6,2)     null,

  constraint PK_ENTREGA primary key (entrega_id)
);

/*==============================================================*/
/* Tabla: ENTREGAESTADO                                         */
/*==============================================================*/
create table ENTREGAESTADO (
  entregaestado_id          INT4            not null,
  entrega_id                INT4            not null,
  entregaestado_estado      VARCHAR(50)     null,

  constraint PK_ENTREGAESTADO primary key (entregaestado_id)
);

/*==============================================================*/
/* Tabla: ENTREGAREPORTE                                        */
/*==============================================================*/
create table ENTREGAREPORTE (
  entregareporte_id            INT4            not null,
  entregaestado_id             INT4            not null,
  entregareporte_incidente     VARCHAR(50)     null,
  entregareporte_pagado        NUMERIC(6,2)    null,
  entregareporte_fecha         DATE            null,

  constraint PK_ENTREGAREPORTE primary key (entregareporte_id)
);

/*==============================================================*/
/* Tabla: SECTOR                                                */
/*==============================================================*/
create table SECTOR (
  sector_id               INT4            not null,
  entrega_id              INT4            not null,
  sector_nombre           VARCHAR(20)     null,
  sector_ciudad           VARCHAR(20)     null,
  sector_codigopostal     VARCHAR(20)     null,

  constraint PK_SECTOR primary key (sector_id)
);

/*==============================================================*/
/* Tabla: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
  solicitud_id            INT4            not null,
  empleado_id             INT4            not null,
  cliente_id              INT4            not null,
  solicitud_origen        VARCHAR(40)     null,
  solicitud_fecha         DATE            null,

  constraint PK_SOLICITUD primary key (solicitud_id)
);

/*==============================================================*/
/* Tabla: LUGAR                                                 */
/*==============================================================*/
create table LUGAR (
  lugar_id               INT4            not null,
  sector_id              INT4            not null,
  lugar_nombre           VARCHAR(30)     null,
  lugar_concurrencia     VARCHAR(30)     null,
  lugar_entrega          VARCHAR(30)     null,

  constraint PK_LUGAR primary key (lugar_id)
);

alter table REVISIONMOTO
  add constraint FK_REVISIONMOTO_RELATIONS_MOTOCLICLETA foreign key (moto_id)
    references MOTOCICLETA (moto_id)
    on delete restrict on update restrict;

alter table REPORTEREVISION
  add constraint FK_REPORTEREVISION_RELATIONS_REVISIONMOTO foreign key (revisionmoto_id)
    references REVISIONMOTO (revisionmoto_id)
    on delete restrict on update restrict;

alter table MOTOCICLETA
  add constraint FK_MOTOCICLETA_RELATIONS_EMPLEADO foreign key (empleado_id)
    references EMPLEADO (empleado_id)
    on delete restrict on update restrict;

alter table LICENCIA
  add constraint FK_LICENCIA_RELATIONS_REVISION foreign key (revision_id)
    references REVISION (revision_id)
    on delete restrict on update restrict;

alter table LICENCIA
  add constraint FK_LICENCIA_RELATIONS_EMPLEADO foreign key (empleado_id)
    references EMPLEADO (empleado_id)
    on delete restrict on update restrict;

alter table EMPLEADO
  add constraint FK_EMPLEADO_RELATIONS_EMPRESA foreign key (empresa_id)
    references EMPRESA (empresa_id)
    on delete restrict on update restrict;

alter table ENTREGAESTADO
  add constraint FK_ENTREGAESTADO_RELATIONS_ENTREGA foreign key (entrega_id)
    references ENTREGA (entrega_id)
    on delete restrict on update restrict;

alter table ENTREGAREPORTE
  add constraint FK_ENTREGAREPORTE_RELATIONS_ENTREGAESTADO foreign key (entregaestado_id)
    references ENTREGAESTADO (entregaestado_id)
    on delete restrict on update restrict;

alter table SECTOR
  add constraint FK_SECTOR_RELATIONS_ENTREGA foreign key (entrega_id)
    references ENTREGA (entrega_id)
    on delete restrict on update restrict;

alter table SOLICITUD
  add constraint FK_SOLICITUD_RELATIONS_EMPLEADO foreign key (empleado_id)
    references EMPLEADO (empleado_id)
    on delete restrict on update restrict;

alter table SOLICITUD
  add constraint FK_SOLICITUD_RELATIONS_CLIENTE foreign key (cliente_id)
    references CLIENTE (cliente_id)
    on delete restrict on update restrict;

alter table LUGAR
  add constraint FK_LUGAR_RELATIONS_SECTOR foreign key (sector_id)
    references SECTOR (sector_id)
    on delete restrict on update restrict;

alter table ENTREGA
  add constraint FK_ENTREGA_RELATIONS_SOLICITUD foreign key (solicitud_id)
    references SOLICITUD (solicitud_id)
    on delete restrict on update restrict;
