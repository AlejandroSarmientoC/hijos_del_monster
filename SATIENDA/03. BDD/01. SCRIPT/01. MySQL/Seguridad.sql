/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/6/2023 00:24:46                           */
/*==============================================================*/


drop table if exists APLICACION;

drop table if exists APLICACIONESROL;

drop table if exists AUTENTICACION;

drop table if exists ROL;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: APLICACION                                            */
/*==============================================================*/
create table APLICACION
(
   IDAPLICACION         char(4) not null,
   NOMBREAPLICACION     varchar(32),
   primary key (IDAPLICACION)
);

/*==============================================================*/
/* Table: APLICACIONESROL                                       */
/*==============================================================*/
create table APLICACIONESROL
(
   IDAPLICACIONESROL    char(2) not null,
   IDAPLICACION         char(4) not null,
   IDUSUARIO            char(6) not null,
   IDROL                char(2) not null,
   primary key (IDAPLICACIONESROL, IDAPLICACION, IDUSUARIO, IDROL)
);

/*==============================================================*/
/* Table: AUTENTICACION                                         */
/*==============================================================*/
create table AUTENTICACION
(
   IDUSUARIO            char(6) not null,
   IDAUTENTICACION      char(4) not null,
   FECHAAUTENTICACION   date,
   ESTADOAUTENTICACION  varchar(16),
   primary key (IDUSUARIO, IDAUTENTICACION)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   IDUSUARIO            char(6) not null,
   IDROL                char(2) not null,
   NOMBREROL            varchar(16),
   primary key (IDUSUARIO, IDROL)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   IDUSUARIO            char(6) not null,
   CONTRASENAUSUARIO    varchar(15),
   EMAILUSUARIO         varchar(64),
   ESTADOUSUARIO        varchar(10),
   FECHAREINICIOUSUARIO date,
   FECHACAMBIOUSUARIO   date,
   primary key (IDUSUARIO)
);

alter table APLICACIONESROL add constraint FK_APLICACIONESROL foreign key (IDAPLICACION)
      references APLICACION (IDAPLICACION) on delete restrict on update restrict;

alter table APLICACIONESROL add constraint FK_APLICACIONESROL2 foreign key (IDUSUARIO, IDROL)
      references ROL (IDUSUARIO, IDROL) on delete restrict on update restrict;

alter table AUTENTICACION add constraint FK_USUARIOSAUTENTICACION foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO) on delete restrict on update restrict;

alter table ROL add constraint FK_ROLESUSUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO) on delete restrict on update restrict;

