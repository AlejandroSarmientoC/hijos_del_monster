/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     14/6/2023 21:13:11                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CABECERA_FACTURA') and o.name = 'FK_CABECERA_CABEFACTU_CLIENTE')
alter table CABECERA_FACTURA
   drop constraint FK_CABECERA_CABEFACTU_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CABECERA_FACTURA') and o.name = 'FK_CABECERA_PAGO_FACT_FORMA_PA')
alter table CABECERA_FACTURA
   drop constraint FK_CABECERA_PAGO_FACT_FORMA_PA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATEGORIA') and o.name = 'FK_CATEGORI_CATEGORIA_PRODUCTO')
alter table CATEGORIA
   drop constraint FK_CATEGORI_CATEGORIA_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_CLIENTESA_ASESORCL')
alter table CLIENTE
   drop constraint FK_CLIENTE_CLIENTESA_ASESORCL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPENSACION') and o.name = 'FK_COMPENSA_COMPENSAC_VENTA')
alter table COMPENSACION
   drop constraint FK_COMPENSA_COMPENSAC_VENTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__CAB_DET_F_CABECERA')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__CAB_DET_F_CABECERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIRECCIONCLIENTE') and o.name = 'FK_DIRECCIO_CLIENTEDI_CLIENTE')
alter table DIRECCIONCLIENTE
   drop constraint FK_DIRECCIO_CLIENTEDI_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIRECCIONPROVEEDOR') and o.name = 'FK_DIRECCIO_PROVEEDOR_PROVEEDO')
alter table DIRECCIONPROVEEDOR
   drop constraint FK_DIRECCIO_PROVEEDOR_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PECAN_CANTON') and o.name = 'FK_PECAN_CA_PR_PEPRV__PEPRV_PR')
alter table PECAN_CANTON
   drop constraint FK_PECAN_CA_PR_PEPRV__PEPRV_PR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPRQ_PARRO') and o.name = 'FK_PEPRQ_PA_PR_PECAN__PECAN_CA')
alter table PEPRQ_PARRO
   drop constraint FK_PEPRQ_PA_PR_PECAN__PECAN_CA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPRV_PROVIN') and o.name = 'FK_PEPRV_PR_PR_PEPAI__PE_PAIS')
alter table PEPRV_PROVIN
   drop constraint FK_PEPRV_PR_PR_PEPAI__PE_PAIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_CATEGORIA_CATEGORI')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_CATEGORIA_CATEGORI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_PRODUCTOS_PROVEEDO')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_PRODUCTOS_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_PRODUCTOS_STOCK')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_PRODUCTOS_STOCK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTOSVENTA') and o.name = 'FK_PRODUCTO_PRODUCTOS_PRODUCTO')
alter table PRODUCTOSVENTA
   drop constraint FK_PRODUCTO_PRODUCTOS_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTOSVENTA') and o.name = 'FK_PRODUCTO_PRODUCTOS_VENTA')
alter table PRODUCTOSVENTA
   drop constraint FK_PRODUCTO_PRODUCTOS_VENTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ROL') and o.name = 'FK_ROL_ROLUSUARI_USUARIO')
alter table ROL
   drop constraint FK_ROL_ROLUSUARI_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO') and o.name = 'FK_TELEFONO_CLIENTETE_CLIENTE')
alter table TELEFONO
   drop constraint FK_TELEFONO_CLIENTETE_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_PR_PEPRQ__PEPRQ_PA')
alter table USUARIO
   drop constraint FK_USUARIO_PR_PEPRQ__PEPRQ_PA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_XR_PEEMP__PEEMP_EM')
alter table USUARIO
   drop constraint FK_USUARIO_XR_PEEMP__PEEMP_EM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_XR_XEEST__XEEST_ES')
alter table USUARIO
   drop constraint FK_USUARIO_XR_XEEST__XEEST_ES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENTA') and o.name = 'FK_VENTA_VENTASCLI_CLIENTE')
alter table VENTA
   drop constraint FK_VENTA_VENTASCLI_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOPC_OPCIO') and o.name = 'FK_XEOPC_OP_XR_XESIS__XESIS_SI')
alter table XEOPC_OPCIO
   drop constraint FK_XEOPC_OP_XR_XESIS__XESIS_SI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOXP_OPCPE') and o.name = 'FK_XEOXP_OP_XR_XEOPC__XEOPC_OP')
alter table XEOXP_OPCPE
   drop constraint FK_XEOXP_OP_XR_XEOPC__XEOPC_OP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOXP_OPCPE') and o.name = 'FK_XEOXP_OP_XR_XEPER__XEPER_PE')
alter table XEOXP_OPCPE
   drop constraint FK_XEOXP_OP_XR_XEPER__XEPER_PE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUXP_USUPE') and o.name = 'FK_XEUXP_US_XR_XEPER__XEPER_PE')
alter table XEUXP_USUPE
   drop constraint FK_XEUXP_US_XR_XEPER__XEPER_PE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUXP_USUPE') and o.name = 'FK_XEUXP_US_XR_XEUSU__USUARIO')
alter table XEUXP_USUPE
   drop constraint FK_XEUXP_US_XR_XEUSU__USUARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ASESORCLIENTE')
            and   type = 'U')
   drop table ASESORCLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CABECERA_FACTURA')
            and   name  = 'CABEFACTURASCLIENTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CABECERA_FACTURA.CABEFACTURASCLIENTE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CABECERA_FACTURA')
            and   name  = 'PAGO_FACTURA_FK'
            and   indid > 0
            and   indid < 255)
   drop index CABECERA_FACTURA.PAGO_FACTURA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CABECERA_FACTURA')
            and   type = 'U')
   drop table CABECERA_FACTURA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIA')
            and   type = 'U')
   drop table CATEGORIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'CLIENTESASESORCLIENTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.CLIENTESASESORCLIENTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMPENSACION')
            and   name  = 'COMPENSACIONESVENTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMPENSACION.COMPENSACIONESVENTA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMPENSACION')
            and   type = 'U')
   drop table COMPENSACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_FACTURA')
            and   name  = 'CAB_DET_FACTURA_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_FACTURA.CAB_DET_FACTURA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_FACTURA')
            and   type = 'U')
   drop table DETALLE_FACTURA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DIRECCIONCLIENTE')
            and   name  = 'CLIENTEDIRECCION_FK'
            and   indid > 0
            and   indid < 255)
   drop index DIRECCIONCLIENTE.CLIENTEDIRECCION_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIRECCIONCLIENTE')
            and   type = 'U')
   drop table DIRECCIONCLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DIRECCIONPROVEEDOR')
            and   name  = 'PROVEEDORESDIRECCION_FK'
            and   indid > 0
            and   indid < 255)
   drop index DIRECCIONPROVEEDOR.PROVEEDORESDIRECCION_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIRECCIONPROVEEDOR')
            and   type = 'U')
   drop table DIRECCIONPROVEEDOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FORMA_PAGO')
            and   type = 'U')
   drop table FORMA_PAGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PECAN_CANTON')
            and   name  = 'PR_PEPRV_PECAN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PECAN_CANTON.PR_PEPRV_PECAN2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PECAN_CANTON')
            and   type = 'U')
   drop table PECAN_CANTON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEEMP_EMPLE')
            and   type = 'U')
   drop table PEEMP_EMPLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPRQ_PARRO')
            and   name  = 'PR_PECAN_PEPRQ2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPRQ_PARRO.PR_PECAN_PEPRQ2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEPRQ_PARRO')
            and   type = 'U')
   drop table PEPRQ_PARRO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPRV_PROVIN')
            and   name  = 'PR_PEPAI_PEPRV2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPRV_PROVIN.PR_PEPAI_PEPRV2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEPRV_PROVIN')
            and   type = 'U')
   drop table PEPRV_PROVIN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PE_PAIS')
            and   type = 'U')
   drop table PE_PAIS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'PRODUCTOSSTOCK_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.PRODUCTOSSTOCK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'CATEGORIASPRODUCTO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.CATEGORIASPRODUCTO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'PRODUCTOSPROVEEDOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.PRODUCTOSPROVEEDOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTO')
            and   type = 'U')
   drop table PRODUCTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTOSVENTA')
            and   name  = 'PRODUCTOSVENTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTOSVENTA.PRODUCTOSVENTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTOSVENTA')
            and   name  = 'PRODUCTOSVENTA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTOSVENTA.PRODUCTOSVENTA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTOSVENTA')
            and   type = 'U')
   drop table PRODUCTOSVENTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROVEEDOR')
            and   type = 'U')
   drop table PROVEEDOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ROL')
            and   name  = 'ROLUSUARIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index ROL.ROLUSUARIOS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROL')
            and   type = 'U')
   drop table ROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STOCK')
            and   type = 'U')
   drop table STOCK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO')
            and   name  = 'CLIENTETELEFONO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO.CLIENTETELEFONO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO')
            and   type = 'U')
   drop table TELEFONO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'PR_PEPRQ_PEEMP_DO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.PR_PEPRQ_PEEMP_DO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'XR_PEEMP_XEUSU_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.XR_PEEMP_XEUSU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'XR_XEEST_XEUSU_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.XR_XEEST_XEUSU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VENTA')
            and   name  = 'VENTASCLIENTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENTA.VENTASCLIENTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VENTA')
            and   type = 'U')
   drop table VENTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEEST_ESTAD')
            and   type = 'U')
   drop table XEEST_ESTAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOPC_OPCIO')
            and   name  = 'XR_XESIS_XEOPC_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOPC_OPCIO.XR_XESIS_XEOPC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEOPC_OPCIO')
            and   type = 'U')
   drop table XEOPC_OPCIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOXP_OPCPE')
            and   name  = 'XR_XEOPC_XEOXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOXP_OPCPE.XR_XEOPC_XEOXP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOXP_OPCPE')
            and   name  = 'XR_XEPER_XEOXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOXP_OPCPE.XR_XEPER_XEOXP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEOXP_OPCPE')
            and   type = 'U')
   drop table XEOXP_OPCPE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEPER_PERFI')
            and   type = 'U')
   drop table XEPER_PERFI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XESIS_SISTE')
            and   type = 'U')
   drop table XESIS_SISTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUXP_USUPE')
            and   name  = 'XR_XEUSU_XEUXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUXP_USUPE.XR_XEUSU_XEUXP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUXP_USUPE')
            and   name  = 'XR_XEPER_XEUXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUXP_USUPE.XR_XEPER_XEUXP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEUXP_USUPE')
            and   type = 'U')
   drop table XEUXP_USUPE
go

/*==============================================================*/
/* Table: ASESORCLIENTE                                         */
/*==============================================================*/
create table ASESORCLIENTE (
   IDASESORCLIENTE      char(2)              not null,
   NOMBREASESORCLIENTE  varchar(64)          null,
   EMAILASESORCLIENTE   varchar(64)          null,
   constraint PK_ASESORCLIENTE primary key nonclustered (IDASESORCLIENTE)
)
go

/*==============================================================*/
/* Table: CABECERA_FACTURA                                      */
/*==============================================================*/
create table CABECERA_FACTURA (
   RUCCLIENTE           char(11)             not null,
   IDFACTURA            char(6)              not null,
   CODIGOFORPAG         char(1)              not null,
   FECHAFACTURA         datetime             not null,
   AUTORIZACIONSRI      varchar(64)          null,
   FECAUTSRI            datetime             null,
   SUBTOTAL             numeric(12,2)        not null,
   IVA                  numeric(12,2)        not null,
   DESCUENTOS           numeric(12,2)        null,
   TOTALPAGAR           numeric(12,2)        not null,
   constraint PK_CABECERA_FACTURA primary key nonclustered (RUCCLIENTE, IDFACTURA)
)
go

/*==============================================================*/
/* Index: PAGO_FACTURA_FK                                       */
/*==============================================================*/
create index PAGO_FACTURA_FK on CABECERA_FACTURA (
CODIGOFORPAG ASC
)
go

/*==============================================================*/
/* Index: CABEFACTURASCLIENTE_FK                                */
/*==============================================================*/
create index CABEFACTURASCLIENTE_FK on CABECERA_FACTURA (
RUCCLIENTE ASC
)
go

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   IDCATEGORIA          char(4)              not null,
   IDPROVEEDOR          char(11)             null,
   IDPRODUCTO           char(8)              null,
   NOMBRECATEGORIA      varchar(64)          null,
   DESCRIPCIONCATEGORIA varchar(128)         null,
   constraint PK_CATEGORIA primary key nonclustered (IDCATEGORIA)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   RUCCLIENTE           char(11)             not null,
   IDASESORCLIENTE      char(2)              not null,
   NOMBRECLIENTE        varchar(64)          null,
   constraint PK_CLIENTE primary key nonclustered (RUCCLIENTE)
)
go

/*==============================================================*/
/* Index: CLIENTESASESORCLIENTE_FK                              */
/*==============================================================*/
create index CLIENTESASESORCLIENTE_FK on CLIENTE (
IDASESORCLIENTE ASC
)
go

/*==============================================================*/
/* Table: COMPENSACION                                          */
/*==============================================================*/
create table COMPENSACION (
   RUCCLIENTE           char(11)             not null,
   IDVENTA              char(8)              not null,
   IDCOMPENSACION       char(2)              not null,
   TIPOCOMPENSACION     varchar(16)          null,
   constraint PK_COMPENSACION primary key nonclustered (RUCCLIENTE, IDVENTA, IDCOMPENSACION)
)
go

/*==============================================================*/
/* Index: COMPENSACIONESVENTA_FK                                */
/*==============================================================*/
create index COMPENSACIONESVENTA_FK on COMPENSACION (
RUCCLIENTE ASC,
IDVENTA ASC
)
go

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   RUCCLIENTE           char(11)             not null,
   IDFACTURA            char(6)              not null,
   IDDETALLEFACTURA     char(6)              not null,
   CODIGOPRODUCTO       varchar(16)          not null,
   DETALLEPRODUCTO      varchar(128)         not null,
   CANTIDADPRODUCTO     int                  not null,
   PRECIOPRODUCTO       numeric(12,2)        not null,
   constraint PK_DETALLE_FACTURA primary key nonclustered (RUCCLIENTE, IDFACTURA, IDDETALLEFACTURA)
)
go

/*==============================================================*/
/* Index: CAB_DET_FACTURA_FK                                    */
/*==============================================================*/
create index CAB_DET_FACTURA_FK on DETALLE_FACTURA (
RUCCLIENTE ASC,
IDFACTURA ASC
)
go

/*==============================================================*/
/* Table: DIRECCIONCLIENTE                                      */
/*==============================================================*/
create table DIRECCIONCLIENTE (
   RUCCLIENTE           char(11)             not null,
   IDDIRECCIONCLI       char(4)              not null,
   CALLEDIRECCIONCLI    varchar(64)          null,
   NUMERODIRECCIONCLI   varchar(8)           null,
   BARRIODIRECCIONCLI   varchar(64)          null,
   CIUDADDIRECCIONCLI   varchar(64)          null,
   constraint PK_DIRECCIONCLIENTE primary key nonclustered (RUCCLIENTE, IDDIRECCIONCLI)
)
go

/*==============================================================*/
/* Index: CLIENTEDIRECCION_FK                                   */
/*==============================================================*/
create index CLIENTEDIRECCION_FK on DIRECCIONCLIENTE (
RUCCLIENTE ASC
)
go

/*==============================================================*/
/* Table: DIRECCIONPROVEEDOR                                    */
/*==============================================================*/
create table DIRECCIONPROVEEDOR (
   IDPROVEEDOR          char(11)             not null,
   IDDIRECCIONPROV      char(4)              not null,
   CALLEDIRECCIONPROV   varchar(64)          null,
   NUMERODIRECCIONPROV  varchar(8)           null,
   BARRIODIRECCIONPROV  varchar(64)          null,
   CIUDADDIRECCIONPROV  varchar(64)          null,
   constraint PK_DIRECCIONPROVEEDOR primary key nonclustered (IDPROVEEDOR, IDDIRECCIONPROV)
)
go

/*==============================================================*/
/* Index: PROVEEDORESDIRECCION_FK                               */
/*==============================================================*/
create index PROVEEDORESDIRECCION_FK on DIRECCIONPROVEEDOR (
IDPROVEEDOR ASC
)
go

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   CODIGOFORPAG         char(1)              not null,
   DESCRIPFORPAG        varchar(64)          not null,
   constraint PK_FORMA_PAGO primary key nonclustered (CODIGOFORPAG)
)
go

/*==============================================================*/
/* Table: PECAN_CANTON                                          */
/*==============================================================*/
create table PECAN_CANTON (
   PEPAI_CODIGO         char(3)              not null,
   PEPRV_CODIGO         char(3)              not null,
   PECAN_CODIGO         char(3)              not null,
   PECAN_DESCRI         varchar(50)          not null,
   constraint PK_PECAN_CANTON primary key nonclustered (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PECAN_CANTON') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PECAN_CANTON' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de CANTONES que pertenecen a una PROVINCIA o ESTADO que pertenecen a un PAIS', 
   'user', @CurrentUser, 'table', 'PECAN_CANTON'
go

/*==============================================================*/
/* Index: PR_PEPRV_PECAN2_FK                                    */
/*==============================================================*/
create index PR_PEPRV_PECAN2_FK on PECAN_CANTON (
PEPAI_CODIGO ASC,
PEPRV_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PEEMP_EMPLE                                           */
/*==============================================================*/
create table PEEMP_EMPLE (
   PEEMP_CODIGO         char(6)              not null,
   PEEMP_APELLI         varchar(50)          not null,
   PEEMP_NOMBRE         varchar(50)          not null,
   PEEMP_FECNAC         datetime             not null,
   PEEMP_FECSAL         datetime             not null,
   PEEMP_DIREC          varchar(200)         not null,
   PEEMP_TELEF          varchar(15)          not null,
   PEEMP_EMAIL          varchar(100)         not null,
   PEEMP_CEDULA         varchar(10)          not null,
   PEEMP_FOTO           varchar(100)         null,
   PEEMP_CARFAM         numeric(3)           not null,
   PEEMP_PASAPO         varchar(15)          not null,
   DISCAPA              binary(1)            not null,
   constraint PK_PEEMP_EMPLE primary key nonclustered (PEEMP_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEEMP_EMPLE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEEMP_EMPLE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad para realizar la gestion de empleados', 
   'user', @CurrentUser, 'table', 'PEEMP_EMPLE'
go

/*==============================================================*/
/* Table: PEPRQ_PARRO                                           */
/*==============================================================*/
create table PEPRQ_PARRO (
   PEPAI_CODIGO         char(3)              not null,
   PEPRV_CODIGO         char(3)              not null,
   PECAN_CODIGO         char(3)              not null,
   PEPRQ_CODIGO         char(3)              not null,
   PEPRQ_DESCRI         varchar(50)          not null,
   constraint PK_PEPRQ_PARRO primary key nonclustered (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEPRQ_PARRO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEPRQ_PARRO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de PARROQUIAS que pertenecen a un CANTON', 
   'user', @CurrentUser, 'table', 'PEPRQ_PARRO'
go

/*==============================================================*/
/* Index: PR_PECAN_PEPRQ2_FK                                    */
/*==============================================================*/
create index PR_PECAN_PEPRQ2_FK on PEPRQ_PARRO (
PEPAI_CODIGO ASC,
PEPRV_CODIGO ASC,
PECAN_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PEPRV_PROVIN                                          */
/*==============================================================*/
create table PEPRV_PROVIN (
   PEPAI_CODIGO         char(3)              not null,
   PEPRV_CODIGO         char(3)              not null,
   PEPRV_DESCRI         varchar(50)          not null,
   constraint PK_PEPRV_PROVIN primary key nonclustered (PEPAI_CODIGO, PEPRV_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEPRV_PROVIN') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEPRV_PROVIN' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de PROVINCIAS o ESTADOS que pertenecen a un PAIS', 
   'user', @CurrentUser, 'table', 'PEPRV_PROVIN'
go

/*==============================================================*/
/* Index: PR_PEPAI_PEPRV2_FK                                    */
/*==============================================================*/
create index PR_PEPAI_PEPRV2_FK on PEPRV_PROVIN (
PEPAI_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PE_PAIS                                               */
/*==============================================================*/
create table PE_PAIS (
   PEPAI_CODIGO         char(3)              not null,
   PEPAI_DESCRI         varchar(50)          not null,
   constraint PK_PE_PAIS primary key nonclustered (PEPAI_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PE_PAIS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PE_PAIS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de PAISES', 
   'user', @CurrentUser, 'table', 'PE_PAIS'
go

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   IDCATEGORIA          char(4)              not null,
   IDPROVEEDOR          char(11)             not null,
   IDPRODUCTO           char(8)              not null,
   IDSTOCK              char(2)              not null,
   NOMBREPRODUCTO       varchar(64)          null,
   ESTADOPRODUCTO       varchar(64)          null,
   STOCKPRODUCTO        varchar(64)          null,
   VALORPRODUCTO        numeric(12,2)        null,
   constraint PK_PRODUCTO primary key nonclustered (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
)
go

/*==============================================================*/
/* Index: PRODUCTOSPROVEEDOR_FK                                 */
/*==============================================================*/
create index PRODUCTOSPROVEEDOR_FK on PRODUCTO (
IDPROVEEDOR ASC
)
go

/*==============================================================*/
/* Index: CATEGORIASPRODUCTO2_FK                                */
/*==============================================================*/
create index CATEGORIASPRODUCTO2_FK on PRODUCTO (
IDCATEGORIA ASC
)
go

/*==============================================================*/
/* Index: PRODUCTOSSTOCK_FK                                     */
/*==============================================================*/
create index PRODUCTOSSTOCK_FK on PRODUCTO (
IDSTOCK ASC
)
go

/*==============================================================*/
/* Table: PRODUCTOSVENTA                                        */
/*==============================================================*/
create table PRODUCTOSVENTA (
   IDCATEGORIA          char(4)              not null,
   IDPROVEEDOR          char(11)             not null,
   IDPRODUCTO           char(8)              not null,
   RUCCLIENTE           char(11)             not null,
   IDVENTA              char(8)              not null,
   constraint PK_PRODUCTOSVENTA primary key nonclustered (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO, RUCCLIENTE, IDVENTA)
)
go

/*==============================================================*/
/* Index: PRODUCTOSVENTA2_FK                                    */
/*==============================================================*/
create index PRODUCTOSVENTA2_FK on PRODUCTOSVENTA (
RUCCLIENTE ASC,
IDVENTA ASC
)
go

/*==============================================================*/
/* Index: PRODUCTOSVENTA_FK                                     */
/*==============================================================*/
create index PRODUCTOSVENTA_FK on PRODUCTOSVENTA (
IDCATEGORIA ASC,
IDPROVEEDOR ASC,
IDPRODUCTO ASC
)
go

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   IDPROVEEDOR          char(11)             not null,
   NOMBREPROVEEDOR      varchar(64)          null,
   TELEFONOPROVEEDOR    numeric(10)          null,
   PAGWEBPROVEEDOR      varchar(128)         null,
   constraint PK_PROVEEDOR primary key nonclustered (IDPROVEEDOR)
)
go

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   IDEUSUARIO           char(6)              not null,
   IDROL                char(2)              not null,
   NOMBREROL            varchar(16)          null,
   constraint PK_ROL primary key nonclustered (IDEUSUARIO, IDROL)
)
go

/*==============================================================*/
/* Index: ROLUSUARIOS_FK                                        */
/*==============================================================*/
create index ROLUSUARIOS_FK on ROL (
IDEUSUARIO ASC
)
go

/*==============================================================*/
/* Table: STOCK                                                 */
/*==============================================================*/
create table STOCK (
   IDSTOCK              char(2)              not null,
   ESTADOSTOCK          varchar(64)          null,
   constraint PK_STOCK primary key nonclustered (IDSTOCK)
)
go

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   RUCCLIENTE           char(11)             not null,
   IDTELEFONO           char(2)              not null,
   NUMTELEFONO          varchar(10)          null,
   constraint PK_TELEFONO primary key nonclustered (RUCCLIENTE, IDTELEFONO)
)
go

/*==============================================================*/
/* Index: CLIENTETELEFONO_FK                                    */
/*==============================================================*/
create index CLIENTETELEFONO_FK on TELEFONO (
RUCCLIENTE ASC
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   IDEUSUARIO           char(6)              not null,
   XEEST_CODIGO         char(1)              not null,
   PEEMP_CODIGO         char(6)              not null,
   PEPAI_CODIGO         char(3)              not null,
   PEPRV_CODIGO         char(3)              not null,
   PECAN_CODIGO         char(3)              not null,
   PEPRQ_CODIGO         char(3)              not null,
   CONTRASENAUSUARIO    varchar(15)          null,
   MAILUSUARIO          varchar(64)          null,
   FECHREINICIOUSUARIO  datetime             null,
   FECHCAMBIOUSUARIO    datetime             null,
   constraint PK_USUARIO primary key nonclustered (IDEUSUARIO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('USUARIO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'USUARIO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de empleado', 
   'user', @CurrentUser, 'table', 'USUARIO'
go

/*==============================================================*/
/* Index: XR_XEEST_XEUSU_FK                                     */
/*==============================================================*/
create index XR_XEEST_XEUSU_FK on USUARIO (
XEEST_CODIGO ASC
)
go

/*==============================================================*/
/* Index: XR_PEEMP_XEUSU_FK                                     */
/*==============================================================*/
create index XR_PEEMP_XEUSU_FK on USUARIO (
PEEMP_CODIGO ASC
)
go

/*==============================================================*/
/* Index: PR_PEPRQ_PEEMP_DO2_FK                                 */
/*==============================================================*/
create index PR_PEPRQ_PEEMP_DO2_FK on USUARIO (
PEPAI_CODIGO ASC,
PEPRV_CODIGO ASC,
PECAN_CODIGO ASC,
PEPRQ_CODIGO ASC
)
go

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   RUCCLIENTE           char(11)             not null,
   IDVENTA              char(8)              not null,
   FECAVENTA            datetime             null,
   DESCUENTOVENTA       numeric(4,2)         null,
   MONTOVENTA           numeric(4,2)         null,
   CANTIDADVENTA        numeric(4,2)         null,
   constraint PK_VENTA primary key nonclustered (RUCCLIENTE, IDVENTA)
)
go

/*==============================================================*/
/* Index: VENTASCLIENTE_FK                                      */
/*==============================================================*/
create index VENTASCLIENTE_FK on VENTA (
RUCCLIENTE ASC
)
go

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
create table XEEST_ESTAD (
   XEEST_CODIGO         char(1)              not null,
   XEEST_DESCRI         varchar(50)          not null,
   constraint PK_XEEST_ESTAD primary key nonclustered (XEEST_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEEST_ESTAD') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEEST_ESTAD' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para gestionar el estado de las difetrentes tablas', 
   'user', @CurrentUser, 'table', 'XEEST_ESTAD'
go

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
create table XEOPC_OPCIO (
   XEOPC_CODIGO         char(3)              not null,
   XESIS_CODIGO         char(1)              not null,
   XEOPC_DESCRI         varchar(100)         not null,
   constraint PK_XEOPC_OPCIO primary key nonclustered (XEOPC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEOPC_OPCIO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEOPC_OPCIO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar el registro de las diferentes opciones de un sistema', 
   'user', @CurrentUser, 'table', 'XEOPC_OPCIO'
go

/*==============================================================*/
/* Index: XR_XESIS_XEOPC_FK                                     */
/*==============================================================*/
create index XR_XESIS_XEOPC_FK on XEOPC_OPCIO (
XESIS_CODIGO ASC
)
go

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
create table XEOXP_OPCPE (
   XEOPC_CODIGO         char(3)              not null,
   XEPER_CODIGO         char(8)              not null,
   XEOXP_FECASI         datetime             not null,
   XEOXP_FECRET         datetime             null,
   constraint PK_XEOXP_OPCPE primary key nonclustered (XEOPC_CODIGO, XEPER_CODIGO, XEOXP_FECASI)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEOXP_OPCPE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEOXP_OPCPE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para llevar el registro de las opciones que pertenecen a un perfil', 
   'user', @CurrentUser, 'table', 'XEOXP_OPCPE'
go

/*==============================================================*/
/* Index: XR_XEPER_XEOXP_FK                                     */
/*==============================================================*/
create index XR_XEPER_XEOXP_FK on XEOXP_OPCPE (
XEPER_CODIGO ASC
)
go

/*==============================================================*/
/* Index: XR_XEOPC_XEOXP_FK                                     */
/*==============================================================*/
create index XR_XEOPC_XEOXP_FK on XEOXP_OPCPE (
XEOPC_CODIGO ASC
)
go

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
create table XEPER_PERFI (
   XEPER_CODIGO         char(8)              not null,
   XEPER_DESCRI         varchar(100)         not null,
   XEPER_OBSER          text                 null,
   constraint PK_XEPER_PERFI primary key nonclustered (XEPER_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEPER_PERFI') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEPER_PERFI' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar la gestión de los diferentes perfiles', 
   'user', @CurrentUser, 'table', 'XEPER_PERFI'
go

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
create table XESIS_SISTE (
   XESIS_CODIGO         char(1)              not null,
   XESIS_DESCRI         varchar(50)          not null,
   constraint PK_XESIS_SISTE primary key nonclustered (XESIS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XESIS_SISTE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XESIS_SISTE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realziar la gestión de los diferentes subsistemas', 
   'user', @CurrentUser, 'table', 'XESIS_SISTE'
go

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
create table XEUXP_USUPE (
   IDEUSUARIO           char(6)              not null,
   XEPER_CODIGO         char(8)              not null,
   XEUXP_FECASI         datetime             not null,
   XEUXP_FECRET         datetime             null,
   constraint PK_XEUXP_USUPE primary key nonclustered (IDEUSUARIO, XEPER_CODIGO, XEUXP_FECASI)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEUXP_USUPE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEUXP_USUPE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para realizar el registro de los diferentes usuarios que pertenecen a un perfil', 
   'user', @CurrentUser, 'table', 'XEUXP_USUPE'
go

/*==============================================================*/
/* Index: XR_XEPER_XEUXP_FK                                     */
/*==============================================================*/
create index XR_XEPER_XEUXP_FK on XEUXP_USUPE (
XEPER_CODIGO ASC
)
go

/*==============================================================*/
/* Index: XR_XEUSU_XEUXP_FK                                     */
/*==============================================================*/
create index XR_XEUSU_XEUXP_FK on XEUXP_USUPE (
IDEUSUARIO ASC
)
go

alter table CABECERA_FACTURA
   add constraint FK_CABECERA_CABEFACTU_CLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE)
go

alter table CABECERA_FACTURA
   add constraint FK_CABECERA_PAGO_FACT_FORMA_PA foreign key (CODIGOFORPAG)
      references FORMA_PAGO (CODIGOFORPAG)
go

alter table CATEGORIA
   add constraint FK_CATEGORI_CATEGORIA_PRODUCTO foreign key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
go

alter table CLIENTE
   add constraint FK_CLIENTE_CLIENTESA_ASESORCL foreign key (IDASESORCLIENTE)
      references ASESORCLIENTE (IDASESORCLIENTE)
go

alter table COMPENSACION
   add constraint FK_COMPENSA_COMPENSAC_VENTA foreign key (RUCCLIENTE, IDVENTA)
      references VENTA (RUCCLIENTE, IDVENTA)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__CAB_DET_F_CABECERA foreign key (RUCCLIENTE, IDFACTURA)
      references CABECERA_FACTURA (RUCCLIENTE, IDFACTURA)
go

alter table DIRECCIONCLIENTE
   add constraint FK_DIRECCIO_CLIENTEDI_CLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE)
go

alter table DIRECCIONPROVEEDOR
   add constraint FK_DIRECCIO_PROVEEDOR_PROVEEDO foreign key (IDPROVEEDOR)
      references PROVEEDOR (IDPROVEEDOR)
go

alter table PECAN_CANTON
   add constraint FK_PECAN_CA_PR_PEPRV__PEPRV_PR foreign key (PEPAI_CODIGO, PEPRV_CODIGO)
      references PEPRV_PROVIN (PEPAI_CODIGO, PEPRV_CODIGO)
go

alter table PEPRQ_PARRO
   add constraint FK_PEPRQ_PA_PR_PECAN__PECAN_CA foreign key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO)
      references PECAN_CANTON (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO)
go

alter table PEPRV_PROVIN
   add constraint FK_PEPRV_PR_PR_PEPAI__PE_PAIS foreign key (PEPAI_CODIGO)
      references PE_PAIS (PEPAI_CODIGO)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_CATEGORIA_CATEGORI foreign key (IDCATEGORIA)
      references CATEGORIA (IDCATEGORIA)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_PRODUCTOS_PROVEEDO foreign key (IDPROVEEDOR)
      references PROVEEDOR (IDPROVEEDOR)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_PRODUCTOS_STOCK foreign key (IDSTOCK)
      references STOCK (IDSTOCK)
go

alter table PRODUCTOSVENTA
   add constraint FK_PRODUCTO_PRODUCTOS_PRODUCTO foreign key (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
      references PRODUCTO (IDCATEGORIA, IDPROVEEDOR, IDPRODUCTO)
go

alter table PRODUCTOSVENTA
   add constraint FK_PRODUCTO_PRODUCTOS_VENTA foreign key (RUCCLIENTE, IDVENTA)
      references VENTA (RUCCLIENTE, IDVENTA)
go

alter table ROL
   add constraint FK_ROL_ROLUSUARI_USUARIO foreign key (IDEUSUARIO)
      references USUARIO (IDEUSUARIO)
go

alter table TELEFONO
   add constraint FK_TELEFONO_CLIENTETE_CLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE)
go

alter table USUARIO
   add constraint FK_USUARIO_PR_PEPRQ__PEPRQ_PA foreign key (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO)
      references PEPRQ_PARRO (PEPAI_CODIGO, PEPRV_CODIGO, PECAN_CODIGO, PEPRQ_CODIGO)
go

alter table USUARIO
   add constraint FK_USUARIO_XR_PEEMP__PEEMP_EM foreign key (PEEMP_CODIGO)
      references PEEMP_EMPLE (PEEMP_CODIGO)
go

alter table USUARIO
   add constraint FK_USUARIO_XR_XEEST__XEEST_ES foreign key (XEEST_CODIGO)
      references XEEST_ESTAD (XEEST_CODIGO)
go

alter table VENTA
   add constraint FK_VENTA_VENTASCLI_CLIENTE foreign key (RUCCLIENTE)
      references CLIENTE (RUCCLIENTE)
go

alter table XEOPC_OPCIO
   add constraint FK_XEOPC_OP_XR_XESIS__XESIS_SI foreign key (XESIS_CODIGO)
      references XESIS_SISTE (XESIS_CODIGO)
go

alter table XEOXP_OPCPE
   add constraint FK_XEOXP_OP_XR_XEOPC__XEOPC_OP foreign key (XEOPC_CODIGO)
      references XEOPC_OPCIO (XEOPC_CODIGO)
go

alter table XEOXP_OPCPE
   add constraint FK_XEOXP_OP_XR_XEPER__XEPER_PE foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO)
go

alter table XEUXP_USUPE
   add constraint FK_XEUXP_US_XR_XEPER__XEPER_PE foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO)
go

alter table XEUXP_USUPE
   add constraint FK_XEUXP_US_XR_XEUSU__USUARIO foreign key (IDEUSUARIO)
      references USUARIO (IDEUSUARIO)
go

