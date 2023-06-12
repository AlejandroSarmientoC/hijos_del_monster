/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/6/2023 00:14:58                           */
/*==============================================================*/


drop table if exists CATEGORIA;

drop table if exists CLIENTE;

drop table if exists DIRECCIONCLIENTE;

drop table if exists DIRECCIONPROVEEDOR;

drop table if exists PRODUCTO;

drop table if exists PRODUCTOSVENTA;

drop table if exists PROVEEDOR;

drop table if exists TELEFONO;

drop table if exists VENTA;

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   RUCPROVEEDOR         char(11) not null,
   IDPRODUCTO           char(8) not null,
   IDCATEGORIA          char(4) not null,
   NOMBRECATEGORIA      varchar(64),
   DESCRIPCIONCATEGORIA varchar(128),
   primary key (RUCPROVEEDOR, IDPRODUCTO, IDCATEGORIA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   RUCCLIENTE           char(11) not null,
   NOMBRECLIENTE        varchar(64),
   primary key (RUCCLIENTE)
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
   RUCPROVEEDOR         char(11) not null,
   IDDIRECCIONPROV      char(4) not null,
   CALLEDIRECCIONPROV   varchar(64),
   NUMERODIRECCIONPROV  varchar(8),
   BARRIODIRECCIONPROV  varchar(64),
   CIUDADDIRECCIONPROV  varchar(64),
   primary key (RUCPROVEEDOR, IDDIRECCIONPROV)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   RUCPROVEEDOR         char(11) not null,
   IDPRODUCTO           char(8) not null,
   CAT_RUCPROVEEDOR     char(11) not null,
   IDCATEGORIA          char(4) not null,
   NOMBREPRODUCTO       varchar(64),
   PRECIOPRODUCTO       numeric(4,2),
   STOCKPRODUCTO        varchar(64),
   primary key (RUCPROVEEDOR, IDPRODUCTO)
);

/*==============================================================*/
/* Table: PRODUCTOSVENTA                                        */
/*==============================================================*/
create table PRODUCTOSVENTA
(
   RUCCLIENTE           char(11) not null,
   IDVENTA              char(8) not null,
   RUCPROVEEDOR         char(11) not null,
   IDPRODUCTO           char(8) not null,
   DESCUENTOPRODUCTOSVENTA numeric(2,0),
   primary key (RUCCLIENTE, IDVENTA, RUCPROVEEDOR, IDPRODUCTO)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR
(
   RUCPROVEEDOR         char(11) not null,
   NOMBREPROVEEDOR      varchar(64),
   TELEFONOPROVEEDOR    numeric(10,0),
   PAGWEBPROVEEDOR      varchar(128),
   primary key (RUCPROVEEDOR)
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
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA
(
   RUCCLIENTE           char(11) not null,
   IDVENTA              char(8) not null,
   FECHAVENTA           date,
   DESCUENTOVENTA       numeric(4,2),
   MONTOFINALVENTA      numeric(4,2),
   CANTIDADVENTA        numeric(4,2),
   primary key (RUCCLIENTE, IDVENTA)
);

alter table CATEGORIA add constraint FK_CATEGORIASPRODUCTO foreign key (RUCPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (RUCPROVEEDOR, IDPRODUCTO) on delete restrict on update restrict;

alter table DIRECCIONCLIENTE add constraint FK_CLIENTESDIRECCION foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE) on delete restrict on update restrict;

alter table DIRECCIONPROVEEDOR add constraint FK_PROVEEDORESDIRECCION foreign key (RUCPROVEEDOR)
      references PROVEEDOR (RUCPROVEEDOR) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_CATEGORIASPRODUCTO2 foreign key (CAT_RUCPROVEEDOR, IDPRODUCTO, IDCATEGORIA)
      references CATEGORIA (RUCPROVEEDOR, IDPRODUCTO, IDCATEGORIA) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_PRODUCTOSPROVEEDOR foreign key (RUCPROVEEDOR)
      references PROVEEDOR (RUCPROVEEDOR) on delete restrict on update restrict;

alter table PRODUCTOSVENTA add constraint FK_PRODUCTOSVENTA foreign key (RUCCLIENTE, IDVENTA)
      references VENTA (RUCCLIENTE, IDVENTA) on delete restrict on update restrict;

alter table PRODUCTOSVENTA add constraint FK_PRODUCTOSVENTA2 foreign key (RUCPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (RUCPROVEEDOR, IDPRODUCTO) on delete restrict on update restrict;

alter table TELEFONO add constraint FK_TELEFONOSCLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE) on delete restrict on update restrict;

alter table VENTA add constraint FK_VENTASCLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE) on delete restrict on update restrict;

