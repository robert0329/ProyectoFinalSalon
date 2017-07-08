CREATE TABLE [dbo].[Citas] (
    [CitaId]       INT           IDENTITY (1, 1) NOT NULL,
    [Nombres]      VARCHAR (50)  NULL,
    [ClienteId]    INT           NULL,
    [Servicio]     VARCHAR (100) NULL,
    [CantPersonas] INT           NULL,
    [Fecha]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CitaId] ASC)
);

CREATE TABLE [dbo].[Ciudades] (
    [CiudadId]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreCiudad] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([CiudadId] ASC)
);

CREATE TABLE [dbo].[Clientes] (
    [ClienteId] INT           IDENTITY (1, 1) NOT NULL,
    [Nombres]   VARCHAR (150) NULL,
    [Provincia] VARCHAR (100) NULL,
    [Ciudad]    VARCHAR (100) NULL,
    [Direccion] VARCHAR (300) NULL,
    [Cedula]    VARCHAR (25)  NULL,
    [Telefono]  VARCHAR (15)  NULL,
    [FechaNac]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ClienteId] ASC)
);

CREATE TABLE [dbo].[DetalleCitas] (
    [Id]        INT          IDENTITY (1, 1) NOT NULL,
    [CitaId]    INT          NULL,
    [Servicio]  VARCHAR (25) NULL,
    [ClienteId] INT          NULL,
    [Nombres]   VARCHAR (50) NULL,
    [Costo]     FLOAT (53)   NULL
);

CREATE TABLE [dbo].[FacturaDetalles] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [FacturaId]  INT          NULL,
    [ServicioId] VARCHAR (25) NULL,
    [Costo]      FLOAT (53)   NULL,
    [Descuento]  FLOAT (53)   NULL,
    [SubTotal]   FLOAT (53)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Facturas] (
    [FacturaId] INT          IDENTITY (1, 1) NOT NULL,
    [ClienteId] INT          NULL,
    [Fecha]     DATETIME     NULL,
    [Total]     DECIMAL (18) NULL,
    PRIMARY KEY CLUSTERED ([FacturaId] ASC),
    FOREIGN KEY ([ClienteId]) REFERENCES [dbo].[Clientes] ([ClienteId])
);

CREATE TABLE [dbo].[Servicios] (
    [ServicioId] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]     VARCHAR (100) NULL,
    [Costo]      DECIMAL (18)  NULL,
    PRIMARY KEY CLUSTERED ([ServicioId] ASC)
);

