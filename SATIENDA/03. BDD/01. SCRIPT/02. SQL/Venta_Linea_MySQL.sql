/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     14/6/2023 21:14:09                           */
/*==============================================================*/


drop table if exists ASESORCLIENTE;

drop table if exists CABECERA_FACTURA;

drop table if exists CATEGORIA;

drop table if exists CLIENTE;

drop table if exists COMPENSACION;

drop table if exists DETALLE_FACTURA;

drop table if exists DIRECCIONCLIENTE;

drop table if exists DIRECCIONPROVEEDOR;

drop table if exists FORMA_PAGO;

drop table if exists PECAN_CANTON;

drop table if exists PEEMP_EMPLE;

drop table if exists PEPRQ_PARRO;

drop table if exists PEPRV_PROVIN;

drop table if exists PE_PAIS;

drop table if exists PRODUCTO;

drop table if exists PRODUCTOSVENTA;

drop table if exists PROVEEDOR;

drop table if exists ROL;

drop table if exists STOCK;

drop table if exists TELEFONO;

drop table if exists USUARIO;

drop table if exists VENTA;

drop table if exists XEEST_ESTAD;

drop table if exists XEOPC_OPCIO;

drop table if exists XEOXP_OPCPE;

drop table if exists XEPER_PERFI;

drop table if exists XESIS_SISTE;

drop table if exists XEUXP_USUPE;

/*==============================================================*/
/* Table: ASESORCLIENTE                                         */
/*==============================================================*/
create table ASESORCLIENTE
(
   IDASESORCLIENTE      char(2) not null,
   NOMBREASESORCLIENTE  varchar(64),
   EMAILASESORCLIENTE   varchar(64),
   primary key (IDASESORCLIENTE)
);

/*==============================================================*/
/* Table: CABECERA_FACTURA                                      */
/*==============================================================*/
create table CABECERA_FACTURA
(
   RUCCLIENTE           char(11) not null,
   IDFACTURA            char(6) not null,
   CODIGOFORPAG         char(1) not null,
   FECHAFACTURA         date not null,
   AUTORIZACIONSRI      varchar(64),
   FECAUTSRI            datetime,
   SUBTOTAL             numeric(12,2) not null,
   IVA                  numeric(12,2) not null,
   DESCUENTOS           numeric(12,2),
   TOTALPAGAR           numeric(12,2) not null,
   primary key (RUCCLIENTE, IDFACTURA)
);

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   IDCATEGORIA          char(4) not null,
   IDPROVEEDOR          char(11),
   IDPRODUCTO           char(8),
   NOMBRECATEGORIA      varchar(64),
   DESCRIPCIONCATEGORIA varchar(128),
   primary key (IDCATEGORIA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   RUCCLIENTE           char(11) not null,
   IDASESORCLIENTE      char(2) not null,
   NOMBRECLIENTE        varchar(64),
   primary key (RUCCLIENTE)
);

/*==============================================================*/
/* Table: COMPENSACION                                          */
/*==============================================================*/
create table COMPENSACION
(
   RUCCLIENTE           char(11) not null,
   IDVENTA              char(8) not null,
   IDCOMPENSACION       char(2) not null,
   TIPOCOMPENSACION     varchar(16),
   primary key (RUCCLIENTE, IDVENTA, IDCOMPENSACION)
);

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA
(
   RUCCLIENTE           char(11) not null,
   IDFACTURA            char(6) not null,
   IDDETALLEFACTURA     char(6) not null,
   CODIGOPRODUCTO       varchar(16) not null,
   DETALLEPRODUCTO      varchar(128) not null,
   CANTIDADPRODUCTO     int not null,
   PRECIOPRODUCTO       numeric(12,2) not null,
   primary key (RUCCLIENTE, IDFACTURA, IDDETALLEFACTURA)
);

/*==============================================================*/
/* Table: DIRECCIONCLIENTE                                      */
/*==============================================================*/
create table DIRECCIONCLIENTE
(
   RUCCLIENTE           char(11) not null,
   IDDIRECCIONCLI       char(4) not null,
   CALLEDIRECCIONCLI    varchar(64),
   NUMERODIRECCIONCLI   varchar(8),
   BARRIODIRECCIONCLI   varchar(64),
   CIUDADDIRECCIONCLI   varchar(64),
   primary key (RUCCLIENTE, IDDIRECCIONCLI)
);

/*==============================================================*/
/* Table: DIRECCIONPROVEEDOR                                    */
/*==============================================================*/
create table DIRECCIONPROVEEDOR
(
   IDPROVEEDOR          char(11) not null,
   IDDIRECCIONPROV      char(4) not null,
   CALLEDIRECCIONPROV   varchar(64),
   NUMERODIRECCIONPROV  varchar(8),
   BARRIODIRECCIONPROV  varchar(64),
   CIUDADDIRECCIONPROV  varchar(64),
   primary key (IDPROVEEDOR, IDDIRECCIONPROV)
);

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO
(
   CODIGOFORPAG         char(1) not null,
   DESCRIPFORPAG        varchar(64) not null,
   primary key (CODIGOFORPAG)
);

/*==============================================================*/
/* Table: PECAN_CANTON                                          */
/*==============================================================*/
create table PECAN_CANTON
(
   PEPAI_CODIGO         char(3) not null,
   PEPRV_CODIGO         char(3) not null,
   PECAN_CODIGO         char(3) not null,
   PECAN_DESCRI         varchar(50) not null,
   primary key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO)
);

alter table PECAN_CANTON comment 'Entidad utilizada para realizar la gestión de CANTONES que p';

/*==============================================================*/
/* Table: PEEMP_EMPLE                                           */
/*==============================================================*/
create table PEEMP_EMPLE
(
   PEEMP_CODIGO         char(6) not null,
   PEEMP_APELLI         varchar(50) not null,
   PEEMP_NOMBRE         varchar(50) not null,
   PEEMP_FECNAC         date not null,
   PEEMP_FECSAL         date not null,
   PEEMP_DIREC          varchar(200) not null,
   PEEMP_TELEF          varchar(15) not null,
   PEEMP_EMAIL          varchar(100) not null,
   PEEMP_CEDULA         varchar(10) not null,
   PEEMP_FOTO           varchar(100),
   PEEMP_CARFAM         numeric(3,0) not null,
   PEEMP_PASAPO         varchar(15) not null,
   DISCAPA              blob not null,
   primary key (PEEMP_CODIGO)
);

alter table PEEMP_EMPLE comment 'Entidad para realizar la gestion de empleados';

/*==============================================================*/
/* Table: PEPRQ_PARRO                                           */
/*==============================================================*/
create table PEPRQ_PARRO
(
   PEPAI_CODIGO         char(3) not null,
   PEPRV_CODIGO         char(3) not null,
   PECAN_CODIGO         char(3) not null,
   PEPRQ_CODIGO         char(3) not null,
   PEPRQ_DESCRI         varchar(50) not null,
   primary key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO)
);

alter table PEPRQ_PARRO comment 'Entidad utilizada para realizar la gestión de PARROQUIAS que';

/*==============================================================*/
/* Table: PEPRV_PROVIN                                          */
/*==============================================================*/
create table PEPRV_PROVIN
(
   PEPAI_CODIGO         char(3) not null,
   PEPRV_CODIGO         char(3) not null,
   PEPRV_DESCRI         varchar(50) not null,
   primary key (PEPAI_CODIGO, PEPRV_CODIGO)
);

alter table PEPRV_PROVIN comment 'Entidad utilizada para realizar la gestión de PROVINCIAS o E';

/*==============================================================*/
/* Table: PE_PAIS                                               */
/*==============================================================*/
create table PE_PAIS
(
   PEPAI_CODIGO         char(3) not null,
   PEPAI_DESCRI         varchar(50) not null,
   primary key (PEPAI_CODIGO)
);

alter table PE_PAIS comment 'Entidad utilizada para realizar la gestión de PAISES';

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   IDCATEGORIA          char(4) not null,
   IDPROVEEDOR          char(11) not null,
   IDPRODUCTO           char(8) not null,
   IDSTOCK              char(2) not null,
   NOMBREPRODUCTO       varchar(64),
   ESTADOPRODUCTO       varchar(64),
   STOCKPRODUCTO        varchar(64),
   VALORPRODUCTO        numeric(12,2),
   primary key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
);

/*==============================================================*/
/* Table: PRODUCTOSVENTA                                        */
/*==============================================================*/
create table PRODUCTOSVENTA
(
   IDCATEGORIA          char(4) not null,
   IDPROVEEDOR          char(11) not null,
   IDPRODUCTO           char(8) not null,
   RUCCLIENTE           char(11) not null,
   IDVENTA              char(8) not null,
   primary key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO, RUCCLIENTE, IDVENTA)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR
(
   IDPROVEEDOR          char(11) not null,
   NOMBREPROVEEDOR      varchar(64),
   TELEFONOPROVEEDOR    numeric(10,0),
   PAGWEBPROVEEDOR      varchar(128),
   primary key (IDPROVEEDOR)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   IDEUSUARIO           char(6) not null,
   IDROL                char(2) not null,
   NOMBREROL            varchar(16),
   primary key (IDEUSUARIO, IDROL)
);

/*==============================================================*/
/* Table: STOCK                                                 */
/*==============================================================*/
create table STOCK
(
   IDSTOCK              char(2) not null,
   ESTADOSTOCK          varchar(64),
   primary key (IDSTOCK)
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO
(
   RUCCLIENTE           char(11) not null,
   IDTELEFONO           char(2) not null,
   NUMTELEFONO          varchar(10),
   primary key (RUCCLIENTE, IDTELEFONO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   IDEUSUARIO           char(6) not null,
   XEEST_CODIGO         char(1) not null,
   PEEMP_CODIGO         char(6) not null,
   PEPAI_CODIGO         char(3) not null,
   PEPRV_CODIGO         char(3) not null,
   PECAN_CODIGO         char(3) not null,
   PEPRQ_CODIGO         char(3) not null,
   CONTRASENAUSUARIO    varchar(15),
   MAILUSUARIO          varchar(64),
   FECHREINICIOUSUARIO  date,
   FECHCAMBIOUSUARIO    date,
   primary key (IDEUSUARIO)
);

alter table USUARIO comment 'Entidad utilizada para realizar la gestión de empleado';

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA
(
   RUCCLIENTE           char(11) not null,
   IDVENTA              char(8) not null,
   FECAVENTA            date,
   DESCUENTOVENTA       numeric(4,2),
   MONTOVENTA           numeric(4,2),
   CANTIDADVENTA        numeric(4,2),
   primary key (RUCCLIENTE, IDVENTA)
);

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
create table XEEST_ESTAD
(
   XEEST_CODIGO         char(1) not null,
   XEEST_DESCRI         varchar(50) not null,
   primary key (XEEST_CODIGO)
);

alter table XEEST_ESTAD comment 'Entidad utilizada para gestionar el estado de las difetrente';

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
create table XEOPC_OPCIO
(
   XEOPC_CODIGO         char(3) not null,
   XESIS_CODIGO         char(1) not null,
   XEOPC_DESCRI         varchar(100) not null,
   primary key (XEOPC_CODIGO)
);

alter table XEOPC_OPCIO comment 'Entidad utilizada para realizar el registro de las diferente';

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
create table XEOXP_OPCPE
(
   XEOPC_CODIGO         char(3) not null,
   XEPER_CODIGO         char(8) not null,
   XEOXP_FECASI         date not null,
   XEOXP_FECRET         date,
   primary key (XEOPC_CODIGO, XEPER_CODIGO, XEOXP_FECASI)
);

alter table XEOXP_OPCPE comment 'Entidad utilizada para llevar el registro de las opciones qu';

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
create table XEPER_PERFI
(
   XEPER_CODIGO         char(8) not null,
   XEPER_DESCRI         varchar(100) not null,
   XEPER_OBSER          text,
   primary key (XEPER_CODIGO)
);

alter table XEPER_PERFI comment 'Entidad utilizada para realizar la gestión de los diferentes';

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
create table XESIS_SISTE
(
   XESIS_CODIGO         char(1) not null,
   XESIS_DESCRI         varchar(50) not null,
   primary key (XESIS_CODIGO)
);

alter table XESIS_SISTE comment 'Entidad utilizada para realziar la gestión de los diferentes';

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
create table XEUXP_USUPE
(
   IDEUSUARIO           char(6) not null,
   XEPER_CODIGO         char(8) not null,
   XEUXP_FECASI         date not null,
   XEUXP_FECRET         date,
   primary key (IDEUSUARIO, XEPER_CODIGO, XEUXP_FECASI)
);

alter table XEUXP_USUPE comment 'Entidad utilizada para realizar el registro de los diferente';

alter table CABECERA_FACTURA add constraint FK_CABEFACTURASCLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE);

alter table CABECERA_FACTURA add constraint FK_PAGO_FACTURA foreign key (CODIGOFORPAG)
      references FORMA_PAGO (CODIGOFORPAG);

alter table CATEGORIA add constraint FK_CATEGORIASPRODUCTO foreign key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO);

alter table CLIENTE add constraint FK_CLIENTESASESORCLIENTE foreign key (IDASESORCLIENTE)
      references ASESORCLIENTE (IDASESORCLIENTE);

alter table COMPENSACION add constraint FK_COMPENSACIONESVENTA foreign key (RUCCLIENTE, IDVENTA)
      references VENTA (RUCCLIENTE, IDVENTA);

alter table DETALLE_FACTURA add constraint FK_CAB_DET_FACTURA foreign key (RUCCLIENTE, IDFACTURA)
      references CABECERA_FACTURA (RUCCLIENTE, IDFACTURA);

alter table DIRECCIONCLIENTE add constraint FK_CLIENTEDIRECCION foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE);

alter table DIRECCIONPROVEEDOR add constraint FK_PROVEEDORESDIRECCION foreign key (IDPROVEEDOR)
      references PROVEEDOR (IDPROVEEDOR);

alter table PECAN_CANTON add constraint FK_PR_PEPRV_PECAN2 foreign key (PEPAI_CODIGO, PEPRV_CODIGO)
      references PEPRV_PROVIN (PEPAI_CODIGO, PEPRV_CODIGO);

alter table PEPRQ_PARRO add constraint FK_PR_PECAN_PEPRQ2 foreign key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO)
      references PECAN_CANTON (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO);

alter table PEPRV_PROVIN add constraint FK_PR_PEPAI_PEPRV2 foreign key (PEPAI_CODIGO)
      references PE_PAIS (PEPAI_CODIGO);

alter table PRODUCTO add constraint FK_CATEGORIASPRODUCTO2 foreign key (IDCATEGORIA)
      references CATEGORIA (IDCATEGORIA);

alter table PRODUCTO add constraint FK_PRODUCTOSPROVEEDOR foreign key (IDPROVEEDOR)
      references PROVEEDOR (IDPROVEEDOR);

alter table PRODUCTO add constraint FK_PRODUCTOSSTOCK foreign key (IDSTOCK)
      references STOCK (IDSTOCK);

alter table PRODUCTOSVENTA add constraint FK_PRODUCTOSVENTA foreign key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO);

alter table PRODUCTOSVENTA add constraint FK_PRODUCTOSVENTA2 foreign key (RUCCLIENTE, IDVENTA)
      references VENTA (RUCCLIENTE, IDVENTA);

alter table ROL add constraint FK_ROLUSUARIOS foreign key (IDEUSUARIO)
      references USUARIO (IDEUSUARIO);

alter table TELEFONO add constraint FK_CLIENTETELEFONO foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE);

alter table USUARIO add constraint FK_PR_PEPRQ_PEEMP_DO2 foreign key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO)
      references PEPRQ_PARRO (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO);

alter table USUARIO add constraint FK_XR_PEEMP_XEUSU foreign key (PEEMP_CODIGO)
      references PEEMP_EMPLE (PEEMP_CODIGO);

alter table USUARIO add constraint FK_XR_XEEST_XEUSU foreign key (XEEST_CODIGO)
      references XEEST_ESTAD (XEEST_CODIGO);

alter table VENTA add constraint FK_VENTASCLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE);

alter table XEOPC_OPCIO add constraint FK_XR_XESIS_XEOPC foreign key (XESIS_CODIGO)
      references XESIS_SISTE (XESIS_CODIGO);

alter table XEOXP_OPCPE add constraint FK_XR_XEOPC_XEOXP foreign key (XEOPC_CODIGO)
      references XEOPC_OPCIO (XEOPC_CODIGO);

alter table XEOXP_OPCPE add constraint FK_XR_XEPER_XEOXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO);

alter table XEUXP_USUPE add constraint FK_XR_XEPER_XEUXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO);

alter table XEUXP_USUPE add constraint FK_XR_XEUSU_XEUXP foreign key (IDEUSUARIO)
      references USUARIO (IDEUSUARIO);

