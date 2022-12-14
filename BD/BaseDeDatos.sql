USE [master]
GO
/****** Object:  Database [TerceraTarea]    Script Date: 11/11/2022 20:48:10 ******/
CREATE DATABASE [TerceraTarea]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TerceraTarea', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TerceraTarea.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TerceraTarea_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TerceraTarea_log.ldf' , SIZE = 1187840KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TerceraTarea] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TerceraTarea].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TerceraTarea] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TerceraTarea] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TerceraTarea] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TerceraTarea] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TerceraTarea] SET ARITHABORT OFF 
GO
ALTER DATABASE [TerceraTarea] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TerceraTarea] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TerceraTarea] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TerceraTarea] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TerceraTarea] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TerceraTarea] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TerceraTarea] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TerceraTarea] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TerceraTarea] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TerceraTarea] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TerceraTarea] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TerceraTarea] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TerceraTarea] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TerceraTarea] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TerceraTarea] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TerceraTarea] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TerceraTarea] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TerceraTarea] SET RECOVERY FULL 
GO
ALTER DATABASE [TerceraTarea] SET  MULTI_USER 
GO
ALTER DATABASE [TerceraTarea] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TerceraTarea] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TerceraTarea] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TerceraTarea] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TerceraTarea] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TerceraTarea] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TerceraTarea] SET QUERY_STORE = OFF
GO
USE [TerceraTarea]
GO
/****** Object:  Table [dbo].[CCAgua]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCAgua](
	[ID] [int] NOT NULL,
	[ValorMinimo] [int] NOT NULL,
	[ValorMinimoM3] [int] NOT NULL,
	[ValorM3] [int] NOT NULL,
	[ValorFijoAdicionalM3] [int] NOT NULL,
 CONSTRAINT [PK_CCAgua] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCBasura]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCBasura](
	[ID] [int] NOT NULL,
	[ValorMinimo] [int] NOT NULL,
	[ValorFijo] [int] NOT NULL,
	[ValorMinimoM2] [int] NOT NULL,
	[ValorTractosM2] [int] NOT NULL,
 CONSTRAINT [PK_CCBasura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCImpPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCImpPropiedad](
	[ID] [int] NOT NULL,
	[ValorPorcentual] [float] NOT NULL,
 CONSTRAINT [PK_CCImpuestoPropiedad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCIntMoratorios]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCIntMoratorios](
	[ID] [int] NOT NULL,
	[ValorPorcentual] [float] NOT NULL,
	[ValorFijo] [int] NOT NULL,
 CONSTRAINT [PK_CCIntMoratorios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCMantParques]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCMantParques](
	[ID] [int] NOT NULL,
	[ValorPorcentual] [float] NOT NULL,
	[ValorFijo] [int] NOT NULL,
 CONSTRAINT [PK_CCMantParques] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCPatente]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCPatente](
	[ID] [int] NOT NULL,
	[ValorFijo] [int] NOT NULL,
 CONSTRAINT [PK_CCPatente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCReconexion]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCReconexion](
	[ID] [int] NOT NULL,
	[ValorFijo] [int] NOT NULL,
 CONSTRAINT [PK_CCReconexion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComprobantePago]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobantePago](
	[ID] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[NumReferencia] [int] NOT NULL,
	[IdTipoMedioPago] [int] NOT NULL,
 CONSTRAINT [PK_ComprobantePago] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConceptoCobro]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConceptoCobro](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[IdTipoMonto] [int] NOT NULL,
	[IdPeriodoMonto] [int] NOT NULL,
 CONSTRAINT [PK_ConceptoCobro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBErrors]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBErrors](
	[errorID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[ErrorNumber] [int] NULL,
	[ErrorState] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorLine] [int] NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[ErrorDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DBErrors] PRIMARY KEY CLUSTERED 
(
	[errorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleCC]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [money] NOT NULL,
	[IdConceptoCobro] [int] NOT NULL,
	[IdFactura] [int] NOT NULL,
 CONSTRAINT [PK_DetalleCC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleCCAgua]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCCAgua](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdMovimientoConsumo] [int] NOT NULL,
 CONSTRAINT [PK_DetalleCCAgua] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoFactura]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoFactura](
	[ID] [int] NOT NULL,
	[Estado] [varchar](128) NOT NULL,
 CONSTRAINT [PK_EstadoFactura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[FechaVencimiento] [date] NOT NULL,
	[TotalOriginal] [float] NOT NULL,
	[TotalPagar] [float] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientoConsumo]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoConsumo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [money] NOT NULL,
	[IdTipoMovimiento] [int] NULL,
	[IdPropiedadCCAgua] [int] NULL,
 CONSTRAINT [PK_MovimientoConsumo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenCorte]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCorte](
	[ID] [int] NOT NULL,
	[FechaCorte] [date] NOT NULL,
	[Estado] [varchar](128) NOT NULL,
 CONSTRAINT [PK_OrdenCorte] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenReconexion]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenReconexion](
	[ID] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_OrdenReconexion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroSistema]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroSistema](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[Valor] [int] NOT NULL,
	[IdTipoParametro] [int] NOT NULL,
 CONSTRAINT [PK_ParametroSistema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodoMontoCC]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodoMontoCC](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[QMeses] [int] NOT NULL,
 CONSTRAINT [PK_PeriodoMontoCC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[ValorDocId] [bigint] NOT NULL,
	[IdTipoDoc] [int] NOT NULL,
	[email] [varchar](128) NOT NULL,
	[telefono1] [bigint] NOT NULL,
	[telefono2] [bigint] NOT NULL,
	[activo] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propiedad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumFinca] [int] NOT NULL,
	[Area] [float] NOT NULL,
	[ValorFiscal] [varchar](128) NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[NumMedidor] [int] NOT NULL,
	[IdTipoTerreno] [int] NOT NULL,
	[IdTipoZona] [int] NOT NULL,
	[M3AcumuladoAgua] [int] NOT NULL,
	[M3AcumuladosUltimoFactura] [int] NOT NULL,
	[activo] [int] NOT NULL,
 CONSTRAINT [PK_Propiedad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadCCAgua]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadCCAgua](
	[ID] [int] NOT NULL,
	[NumeroMedidor] [int] NOT NULL,
	[SaldoAcumulado] [money] NOT NULL,
 CONSTRAINT [PK_PropiedadCCAgua] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadXCC]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadXCC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[IdConceptoCobro] [int] NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
 CONSTRAINT [PK_PropiedadXCC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PXP]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PXP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[IdPersona] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[IdTipoAsociacion] [int] NOT NULL,
	[activo] [int] NOT NULL,
 CONSTRAINT [PK_PXP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAsociacion]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAsociacion](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoAsociacion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocIdent]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocIdent](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[Mascara] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoDocIdent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMedioPago]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMedioPago](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoMedioPago] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMontoCC]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMontoCC](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoMontoCC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMovimientoConsumo]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMovimientoConsumo](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoMovimientoConsumo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoParametroSistema]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoParametroSistema](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoParametroSistema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTerreno]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTerreno](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoTerreno] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoZona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoZona](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TipoZona] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](128) NOT NULL,
	[Password] [varchar](128) NOT NULL,
	[TipoUsuario] [varchar](128) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdTipoAsociacion] [int] NOT NULL,
	[activo] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UXP]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UXP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[IdUsuario] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[IdTipoAsociacion] [int] NOT NULL,
	[activo] [int] NOT NULL,
 CONSTRAINT [PK_UXP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CCAgua]  WITH CHECK ADD  CONSTRAINT [FK_CCAgua_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCAgua] CHECK CONSTRAINT [FK_CCAgua_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCBasura]  WITH CHECK ADD  CONSTRAINT [FK_CCBasura_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCBasura] CHECK CONSTRAINT [FK_CCBasura_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCImpPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_CCImpPropiedad_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCImpPropiedad] CHECK CONSTRAINT [FK_CCImpPropiedad_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCIntMoratorios]  WITH CHECK ADD  CONSTRAINT [FK_CCIntMoratorios_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCIntMoratorios] CHECK CONSTRAINT [FK_CCIntMoratorios_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCMantParques]  WITH CHECK ADD  CONSTRAINT [FK_CCMantParques_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCMantParques] CHECK CONSTRAINT [FK_CCMantParques_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCPatente]  WITH CHECK ADD  CONSTRAINT [FK_CCPatente_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCPatente] CHECK CONSTRAINT [FK_CCPatente_ConceptoCobro]
GO
ALTER TABLE [dbo].[CCReconexion]  WITH CHECK ADD  CONSTRAINT [FK_CCReconexion_ConceptoCobro] FOREIGN KEY([ID])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[CCReconexion] CHECK CONSTRAINT [FK_CCReconexion_ConceptoCobro]
GO
ALTER TABLE [dbo].[ComprobantePago]  WITH CHECK ADD  CONSTRAINT [FK_ComprobantePago_Factura] FOREIGN KEY([ID])
REFERENCES [dbo].[Factura] ([ID])
GO
ALTER TABLE [dbo].[ComprobantePago] CHECK CONSTRAINT [FK_ComprobantePago_Factura]
GO
ALTER TABLE [dbo].[ComprobantePago]  WITH CHECK ADD  CONSTRAINT [FK_ComprobantePago_TipoMedioPago] FOREIGN KEY([IdTipoMedioPago])
REFERENCES [dbo].[TipoMedioPago] ([ID])
GO
ALTER TABLE [dbo].[ComprobantePago] CHECK CONSTRAINT [FK_ComprobantePago_TipoMedioPago]
GO
ALTER TABLE [dbo].[ConceptoCobro]  WITH CHECK ADD  CONSTRAINT [FK_ConceptoCobro_PeriodoMontoCC] FOREIGN KEY([IdPeriodoMonto])
REFERENCES [dbo].[PeriodoMontoCC] ([ID])
GO
ALTER TABLE [dbo].[ConceptoCobro] CHECK CONSTRAINT [FK_ConceptoCobro_PeriodoMontoCC]
GO
ALTER TABLE [dbo].[ConceptoCobro]  WITH CHECK ADD  CONSTRAINT [FK_ConceptoCobro_TipoMontoCC] FOREIGN KEY([IdTipoMonto])
REFERENCES [dbo].[TipoMontoCC] ([ID])
GO
ALTER TABLE [dbo].[ConceptoCobro] CHECK CONSTRAINT [FK_ConceptoCobro_TipoMontoCC]
GO
ALTER TABLE [dbo].[DetalleCC]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCC_ConceptoCobro] FOREIGN KEY([IdConceptoCobro])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[DetalleCC] CHECK CONSTRAINT [FK_DetalleCC_ConceptoCobro]
GO
ALTER TABLE [dbo].[DetalleCC]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCC_Factura] FOREIGN KEY([IdFactura])
REFERENCES [dbo].[Factura] ([ID])
GO
ALTER TABLE [dbo].[DetalleCC] CHECK CONSTRAINT [FK_DetalleCC_Factura]
GO
ALTER TABLE [dbo].[DetalleCCAgua]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCCAgua_DetalleCC] FOREIGN KEY([ID])
REFERENCES [dbo].[DetalleCC] ([ID])
GO
ALTER TABLE [dbo].[DetalleCCAgua] CHECK CONSTRAINT [FK_DetalleCCAgua_DetalleCC]
GO
ALTER TABLE [dbo].[DetalleCCAgua]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCCAgua_MovimientoConsumo] FOREIGN KEY([IdMovimientoConsumo])
REFERENCES [dbo].[MovimientoConsumo] ([ID])
GO
ALTER TABLE [dbo].[DetalleCCAgua] CHECK CONSTRAINT [FK_DetalleCCAgua_MovimientoConsumo]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Propiedad] FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedad] ([ID])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Propiedad]
GO
ALTER TABLE [dbo].[MovimientoConsumo]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoConsumo_PropiedadCCAgua] FOREIGN KEY([IdPropiedadCCAgua])
REFERENCES [dbo].[PropiedadCCAgua] ([ID])
GO
ALTER TABLE [dbo].[MovimientoConsumo] CHECK CONSTRAINT [FK_MovimientoConsumo_PropiedadCCAgua]
GO
ALTER TABLE [dbo].[MovimientoConsumo]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoConsumo_TipoMovimientoConsumo] FOREIGN KEY([IdTipoMovimiento])
REFERENCES [dbo].[TipoMovimientoConsumo] ([ID])
GO
ALTER TABLE [dbo].[MovimientoConsumo] CHECK CONSTRAINT [FK_MovimientoConsumo_TipoMovimientoConsumo]
GO
ALTER TABLE [dbo].[OrdenCorte]  WITH CHECK ADD  CONSTRAINT [FK_OrdenCorte_Propiedad] FOREIGN KEY([ID])
REFERENCES [dbo].[Propiedad] ([ID])
GO
ALTER TABLE [dbo].[OrdenCorte] CHECK CONSTRAINT [FK_OrdenCorte_Propiedad]
GO
ALTER TABLE [dbo].[OrdenReconexion]  WITH CHECK ADD  CONSTRAINT [FK_OrdenReconexion_OrdenCorte] FOREIGN KEY([ID])
REFERENCES [dbo].[OrdenCorte] ([ID])
GO
ALTER TABLE [dbo].[OrdenReconexion] CHECK CONSTRAINT [FK_OrdenReconexion_OrdenCorte]
GO
ALTER TABLE [dbo].[ParametroSistema]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistema_TipoParametroSistema] FOREIGN KEY([IdTipoParametro])
REFERENCES [dbo].[TipoParametroSistema] ([ID])
GO
ALTER TABLE [dbo].[ParametroSistema] CHECK CONSTRAINT [FK_ParametroSistema_TipoParametroSistema]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoDocIdent] FOREIGN KEY([IdTipoDoc])
REFERENCES [dbo].[TipoDocIdent] ([ID])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_TipoDocIdent]
GO
ALTER TABLE [dbo].[Propiedad]  WITH CHECK ADD  CONSTRAINT [FK_Propiedad_TipoTerreno] FOREIGN KEY([IdTipoTerreno])
REFERENCES [dbo].[TipoTerreno] ([ID])
GO
ALTER TABLE [dbo].[Propiedad] CHECK CONSTRAINT [FK_Propiedad_TipoTerreno]
GO
ALTER TABLE [dbo].[Propiedad]  WITH CHECK ADD  CONSTRAINT [FK_Propiedad_TipoZona] FOREIGN KEY([IdTipoZona])
REFERENCES [dbo].[TipoZona] ([ID])
GO
ALTER TABLE [dbo].[Propiedad] CHECK CONSTRAINT [FK_Propiedad_TipoZona]
GO
ALTER TABLE [dbo].[PropiedadCCAgua]  WITH CHECK ADD  CONSTRAINT [FK_PropiedadCCAgua_PropiedadXCC] FOREIGN KEY([ID])
REFERENCES [dbo].[PropiedadXCC] ([ID])
GO
ALTER TABLE [dbo].[PropiedadCCAgua] CHECK CONSTRAINT [FK_PropiedadCCAgua_PropiedadXCC]
GO
ALTER TABLE [dbo].[PropiedadXCC]  WITH CHECK ADD  CONSTRAINT [FK_PropiedadXCC_ConceptoCobro] FOREIGN KEY([IdConceptoCobro])
REFERENCES [dbo].[ConceptoCobro] ([ID])
GO
ALTER TABLE [dbo].[PropiedadXCC] CHECK CONSTRAINT [FK_PropiedadXCC_ConceptoCobro]
GO
ALTER TABLE [dbo].[PropiedadXCC]  WITH CHECK ADD  CONSTRAINT [FK_PropiedadXCC_Propiedad] FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedad] ([ID])
GO
ALTER TABLE [dbo].[PropiedadXCC] CHECK CONSTRAINT [FK_PropiedadXCC_Propiedad]
GO
ALTER TABLE [dbo].[PXP]  WITH CHECK ADD  CONSTRAINT [FK_PXP_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([ID])
GO
ALTER TABLE [dbo].[PXP] CHECK CONSTRAINT [FK_PXP_Persona]
GO
ALTER TABLE [dbo].[PXP]  WITH CHECK ADD  CONSTRAINT [FK_PXP_Propiedad] FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedad] ([ID])
GO
ALTER TABLE [dbo].[PXP] CHECK CONSTRAINT [FK_PXP_Propiedad]
GO
ALTER TABLE [dbo].[PXP]  WITH CHECK ADD  CONSTRAINT [FK_PXP_TipoAsociacion] FOREIGN KEY([IdTipoAsociacion])
REFERENCES [dbo].[TipoAsociacion] ([ID])
GO
ALTER TABLE [dbo].[PXP] CHECK CONSTRAINT [FK_PXP_TipoAsociacion]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoAsociacion] FOREIGN KEY([IdTipoAsociacion])
REFERENCES [dbo].[TipoAsociacion] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoAsociacion]
GO
ALTER TABLE [dbo].[UXP]  WITH CHECK ADD  CONSTRAINT [FK_UXP_Propiedad1] FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedad] ([ID])
GO
ALTER TABLE [dbo].[UXP] CHECK CONSTRAINT [FK_UXP_Propiedad1]
GO
ALTER TABLE [dbo].[UXP]  WITH CHECK ADD  CONSTRAINT [FK_UXP_TipoAsociacion] FOREIGN KEY([IdTipoAsociacion])
REFERENCES [dbo].[TipoAsociacion] ([ID])
GO
ALTER TABLE [dbo].[UXP] CHECK CONSTRAINT [FK_UXP_TipoAsociacion]
GO
ALTER TABLE [dbo].[UXP]  WITH CHECK ADD  CONSTRAINT [FK_UXP_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[UXP] CHECK CONSTRAINT [FK_UXP_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[proc_comprobantePago]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_comprobantePago]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tComprobantePago
			SELECT c.Fecha, p.Nombre, c.NumReferencia, f.TotalPagar
			FROM dbo.ComprobantePago c
			INNER JOIN dbo.TipoMedioPago p
			ON p.ID = c.IdTipoMedioPago
			INNER JOIN dbo.Factura f
			ON f.ID = c.ID
			WHERE c.ID = @inId
		COMMIT TRANSACTION tComprobantePago	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tComprobantePago;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_consultaMovConsumoPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_consultaMovConsumoPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		SELECT P.NumFinca, TMC.Nombre, MC.Fecha, MC.Monto
		FROM dbo.MovimientoConsumo MC

		INNER JOIN dbo.TipoMovimientoConsumo TMC
		ON TMC.ID = MC.IdTipoMovimiento

		INNER JOIN dbo.PropiedadXCC PCC
		ON PCC.ID = MC.IdPropiedadCCAgua

		INNER JOIN dbo.Propiedad P
		ON P.ID = PCC.IdPropiedad

		WHERE P.ID = @inId

	END TRY

	BEGIN CATCH
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_consultaPropiedadesPropietario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_consultaPropiedadesPropietario](
	@inNombre VARCHAR(32),
	@inIdent BIGINT,
	@outResult INT OUTPUT
	) AS
BEGIN
	SELECT P.ID, P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
	FROM dbo.Propiedad P
	INNER JOIN dbo.TipoZona TZ
	ON TZ.ID = P.IdTipoZona
	INNER JOIN dbo.TipoTerreno TT
	ON TT.ID = P.IdTipoTerreno
	INNER JOIN dbo.Persona Pe
	ON Pe.Nombre = @inNombre OR Pe.ValorDocId = @inIdent
	INNER JOIN dbo.Usuario U
	ON U.IdPersona = Pe.ID AND U.TipoUsuario = 'Propietario'
	INNER JOIN dbo.UXP UP
	ON UP.IdUsuario = U.ID AND UP.IdPropiedad = P.ID
	WHERE P.activo = 1


END;


GO
/****** Object:  StoredProcedure [dbo].[proc_consultaPropiedadesUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_consultaPropiedadesUsuario](
	@inNombre VARCHAR(32),
	@outResult INT OUTPUT
	) AS
BEGIN
	SELECT P.ID, P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
	FROM dbo.Propiedad P
	INNER JOIN dbo.TipoZona TZ
	ON TZ.ID = P.IdTipoZona
	INNER JOIN dbo.TipoTerreno TT
	ON TT.ID = P.IdTipoTerreno
	INNER JOIN dbo.Persona Pe
	ON Pe.Nombre = @inNombre
	INNER JOIN dbo.PXP PP
	ON P.ID = PP.IdPropiedad AND Pe.ID = PP.IdPersona


END;

--EXEC proc_consultaPropiedadesPropietario '', 2222222, 0

GO
/****** Object:  StoredProcedure [dbo].[proc_consultaPropietarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_consultaPropietarioPropiedad](
	@inNumFinca INT,
	@outResult INT OUTPUT
	) AS
BEGIN
	SELECT P.ID, P.Nombre, TDI.Nombre, P.ValorDocId, P.email, P.telefono1, P.telefono2
	FROM dbo.Persona P
	INNER JOIN dbo.TipoDocIdent TDI
	ON P.IdTipoDoc = TDI.ID
	INNER JOIN dbo.Usuario U
	ON U.IdPersona = P.ID AND U.TipoUsuario = 'Propietario'
	INNER JOIN dbo.Propiedad Pr
	ON Pr.NumFinca = @inNumFinca
	INNER JOIN dbo.UXP UP
	ON UP.IdPropiedad = Pr.ID AND UP.IdUsuario = U.ID
	WHERE P.activo = 1
END;

--EXEC [proc_consultaPropietarioPropiedad]  1033, 0

GO
/****** Object:  StoredProcedure [dbo].[proc_consultaUsuariosPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_consultaUsuariosPropiedad](
	@inNumFinca INT,
	@outResult INT OUTPUT
	) AS
BEGIN
	SELECT P.ID, P.Nombre, TDI.Nombre, P.ValorDocId, P.email, P.telefono1, P.telefono2
	FROM dbo.Persona P
	INNER JOIN dbo.TipoDocIdent TDI
	ON P.IdTipoDoc = TDI.ID
	INNER JOIN dbo.Propiedad Pr
	ON Pr.NumFinca = @inNumFinca
	INNER JOIN dbo.PXP PP
	ON PP.IdPropiedad = Pr.ID AND PP.IdPersona = P.ID
	WHERE P.activo = 1
END;

--EXEC [proc_consultaPropietarioPropiedad]  1033, 0

GO
/****** Object:  StoredProcedure [dbo].[proc_desasociarPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_desasociarPersonaPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @fecha DATE;
		SET @fecha = GETDATE()

		BEGIN TRANSACTION tDesasociarPersonaPropiedad
			UPDATE [dbo].[PXP]
			SET FechaFin = @fecha
			WHERE ID = @inId
		COMMIT TRANSACTION tDesasociarPersonaPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDesasociarPersonaPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_desasociarUsuarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_desasociarUsuarioPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @fecha DATE;
		SET @fecha = GETDATE()

		BEGIN TRANSACTION tDesasociarUsuarioPropiedad
			UPDATE [dbo].[UXP]
			SET FechaFin = @fecha
			WHERE ID = @inId
		COMMIT TRANSACTION tDesasociarUsuarioPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDesasociarUsuarioPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_detallesPersona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesPersona]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesPersona
			SELECT P.Nombre, P.ValorDocId, TDI.Nombre, P.email, P.telefono1, P.telefono2
			FROM dbo.Persona P
			INNER JOIN dbo.TipoDocIdent TDI
			ON P.IdTipoDoc = TDI.ID
			WHERE P.ID = @inId
		COMMIT TRANSACTION tDetallesPersona	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesPersona;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_detallesPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesPersonaPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @fecha DATE;
		SET @fecha = GETDATE()

		BEGIN TRANSACTION tDetallesPersonaPropiedad
			SELECT P.Nombre, Pr.NumFinca, PP.FechaInicio, PP.FechaFin
			FROM dbo.PXP PP
			INNER JOIN dbo.Persona P
			ON P.ID = PP.IdPersona
			INNER JOIN dbo.Propiedad Pr
			ON Pr.ID = PP.IdPropiedad
			WHERE PP.ID = @inId
		COMMIT TRANSACTION tDetallesPersonaPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesPersonaPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_detallesPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesPropiedad
			SELECT P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
			FROM dbo.Propiedad P
			INNER JOIN dbo.TipoZona TZ
			ON TZ.ID = P.IdTipoZona
			INNER JOIN dbo.TipoTerreno TT
			ON TT.ID = P.IdTipoTerreno
			WHERE P.ID = @inId
		COMMIT TRANSACTION tDetallesPropiedad	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_detallesUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesUsuario]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesUsuario
			SELECT U.UserName, U.[Password], U.TipoUsuario, P.Nombre
			FROM dbo.Usuario U
			INNER JOIN dbo.Persona P
			ON P.ID = U.IdPersona
			WHERE U.ID = @inId
		COMMIT TRANSACTION tDetallesUsuario	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesUsuario;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_detallesUsuarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesUsuarioPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @fecha DATE;
		SET @fecha = GETDATE()

		BEGIN TRANSACTION tDetallesUsuarioPropiedad
			SELECT P.Nombre, Pr.NumFinca, UP.FechaInicio, UP.FechaFin
			FROM dbo.UXP UP
			INNER JOIN dbo.Usuario U
			ON U.ID = UP.IdUsuario
			INNER JOIN dbo.Persona P
			ON P.ID = U.IdPersona
			INNER JOIN dbo.Propiedad Pr
			ON Pr.ID = UP.IdPropiedad
			WHERE UP.ID = @inId
		COMMIT TRANSACTION tDetallesUsuarioPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesUsuarioPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_editarPersona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarPersona]
	@inId INT,
	@inNombre VARCHAR(128),	 
	@inValorDocId BIGINT,
	@inTipoDoc VARCHAR(128),
	@inEmail VARCHAR(128),
	@inTele1 BIGINT,
	@inTele2 BIGINT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		SET @outResult=0;
		DECLARE @idTipoDoc INT;
		SELECT @idTipoDoc = T.ID
		FROM dbo.TipoDocIdent T
		WHERE T.Nombre = @inTipoDoc;
		BEGIN TRANSACTION tEditarPersona
			UPDATE [dbo].[Persona]
			SET Nombre = @inNombre,
			ValorDocId =  @inValorDocId,
			IdTipoDoc = @idTipoDoc,
			email  = @inEmail,
			telefono1 = @inTele1,
			telefono2 = @inTele2
			WHERE ID = @inId
		COMMIT TRANSACTION tEditarPersona
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarPersona;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			--ERROR_STATE(),
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_editarPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarPersonaPropiedad]
	@inId INT,
	@inValorDocId BIGINT,
	@inNumFinca INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idPersona INT, @idPropiedad INT, @fecha DATE;
		SET @fecha = GETDATE()

		SELECT @idPersona = P.ID, @idPropiedad = Pr.ID
		FROM dbo.Persona P
		INNER JOIN dbo.Propiedad Pr
		ON Pr.NumFinca = @inNumFinca
		WHERE P.ValorDocId = @inValorDocId;

		IF NOT EXISTS (
		SELECT 1 FROM dbo.PXP PP
		WHERE PP.IdPersona = @idPersona
		AND PP.IdPropiedad = @idPropiedad
		AND PP.FechaFin IS NOT NULL
		AND @inId != PP.ID
		)
			BEGIN
				BEGIN TRANSACTION tEditarPersonaPropiedad
					UPDATE [dbo].[PXP]
					SET IdPersona = @idPersona,
					IdPropiedad =  @idPropiedad
					WHERE ID = @inId
				COMMIT TRANSACTION tEditarPersonaPropiedad
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarPersonaPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_editarPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarPropiedad]
	@inId INT,
	@inNumFinca INT,	 
	@inArea FLOAT,
	@inValor VARCHAR(128),
	@inTipoTerreno VARCHAR(128),
	@inTipoZona VARCHAR(128),
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
		SET @outResult=0;
		DECLARE @idTipoTerreno INT, @idTipoZona INT;
		SELECT @idTipoTerreno = TT.ID, @idTipoZona = TZ.ID
		FROM dbo.TipoTerreno TT
		INNER JOIN dbo.TipoZona TZ
		ON TZ.Nombre = @inTipoZona
		WHERE TT.Nombre = @inTipoTerreno;
		BEGIN TRANSACTION tEditarPropiedad
			UPDATE [dbo].[Propiedad]
			SET NumFinca = @inNumFinca,
			Area =  @inArea,
			ValorFiscal = @inValor,
			IdTipoTerreno = @idTipoTerreno,
			IdTipoZona = @idTipoZona
			WHERE ID = @inId
		COMMIT TRANSACTION tEditarPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_editarUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarUsuario]
	@inId INT,
	@inUserName VARCHAR(128),	 
	@inPassword VARCHAR(128),
	@inTipoUsuario VARCHAR(128),
	@inValorDocId BIGINT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idPersona INT;
		SELECT @idPersona = P.ID
		FROM dbo.Persona P
		WHERE P.ValorDocId = @inValorDocId;
		IF EXISTS (SELECT 1 FROM dbo.Persona P WHERE P.ID = @idPersona)
			IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.IdPersona = @idPersona AND U.ID != @inId)
				IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.UserName = @inUserName AND U.ID != @inId)
					BEGIN
						BEGIN TRANSACTION tEditarUsuario
							UPDATE [dbo].[Usuario]
							SET UserName = @inUserName,
							[Password] =  @inPassword,
							TipoUsuario = @inTipoUsuario,
							IdPersona  = @idPersona
							WHERE ID = @inId
						COMMIT TRANSACTION tEditarUsuario
					END
				ELSE
					SET @outResult=50010;
			ELSE
				SET @outResult=50009;
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarUsuario;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_editarUsuarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarUsuarioPropiedad] 
	@inId INT,
	@inValorDocId BIGINT,
	@inNumFinca INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		
		SET @outResult=0;
		DECLARE @idUsuario INT, @idPropiedad INT, @fecha DATE;
		SET @fecha = GETDATE()

		SELECT @idUsuario = P.ID, @idPropiedad = Pr.ID
		FROM dbo.Persona P
		INNER JOIN dbo.Propiedad Pr
		ON Pr.NumFinca = @inNumFinca
		WHERE P.ValorDocId = @inValorDocId;

		IF EXISTS (
		SELECT 1 FROM dbo.UXP UP
		WHERE UP.IdUsuario = @idUsuario
		AND UP.IdPropiedad = @idPropiedad
		AND UP.FechaFin IS NOT NULL
		AND @inId = UP.ID
		)
			BEGIN
				BEGIN TRANSACTION tEditarPersonaPropiedad
					UPDATE [dbo].[UXP]
					SET IdUsuario = @idUsuario,
					IdPropiedad =  @idPropiedad
					WHERE ID = @inId
				COMMIT TRANSACTION tEditarPersonaPropiedad
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarUsuarioPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_eliminarPersona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_eliminarPersona]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tEliminarPersona
			UPDATE dbo.Persona
			SET activo = 0
			WHERE ID = @inId
		COMMIT TRANSACTION tEliminarPersona	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEliminarPersona;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_eliminarPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_eliminarPersonaPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;

		BEGIN TRANSACTION tEliminarPersonaPropiedad
			UPDATE dbo.PXP
			SET activo = 0
			WHERE ID = @inId
		COMMIT TRANSACTION tEliminarPersonaPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEliminarPersonaPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_eliminarPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_eliminarPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tEliminarPropiedad
			UPDATE dbo.Propiedad
			SET activo = 0
			WHERE ID = @inId
		COMMIT TRANSACTION tEliminarPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEliminarPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_eliminarUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_eliminarUsuario]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tEliminarUsuario
			UPDATE dbo.Usuario
			SET activo = 0
			WHERE ID = @inId
		COMMIT TRANSACTION tEliminarUsuario	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEliminarUsuario;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_factPagadas]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_factPagadas]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesPropiedad
			SELECT p.NumFinca
				, f.Fecha
				, f.FechaVencimiento
				, f.TotalOriginal
				, f.TotalPagar
				, e.Estado
				, f.ID
			FROM dbo.Factura f
				, dbo.Propiedad p
				, dbo.EstadoFactura e
			WHERE f.IdPropiedad = @inId
				AND (2 = f.IdEstado
					OR 3 = f.IdEstado)
				AND p.ID = @inId
				AND e.ID = f.IdEstado
		COMMIT TRANSACTION tDetallesPropiedad	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_factPendientes]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_factPendientes]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tFactPendientes
			SELECT p.NumFinca
				, f.Fecha
				, f.FechaVencimiento
				, f.TotalOriginal
				, f.TotalPagar
				, e.Estado
				, f.ID
			FROM dbo.Factura f
				, dbo.Propiedad p
				, dbo.EstadoFactura e
			WHERE f.IdPropiedad = @inId
				AND f.IdEstado = 1
				AND p.ID = @inId
				AND e.ID = f.IdEstado
		COMMIT TRANSACTION tFactPendientes	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tFactPendientes;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_insertarPersona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarPersona]
	@inNombre VARCHAR(128),	 
	@inValorDocId BIGINT,
	@inTipoDoc VARCHAR(128),
	@inEmail VARCHAR(128),
	@inTele1 BIGINT,
	@inTele2 BIGINT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idTipoDoc INT;
		SELECT @idTipoDoc = T.ID
		FROM dbo.TipoDocIdent T
		WHERE T.Nombre = @inTipoDoc;
		IF NOT EXISTS (SELECT 1 FROM dbo.Persona P WHERE P.ValorDocId = @inValorDocId)
			BEGIN
				BEGIN TRANSACTION tInsertarPersona
					INSERT INTO [dbo].[Persona] (
					Nombre
					, ValorDocId
					, IdTipoDoc
					, email
					, telefono1
					, telefono2
					)
					VALUES (
					@inNombre
					, @inValorDocId
					, @idTipoDoc
					, @inEmail
					, @inTele1
					, @inTele2
					)
				COMMIT TRANSACTION tInsertarPersona
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarPersona;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_insertarPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarPersonaPropiedad] 
	@inValorDocId BIGINT,
	@inNumFinca INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idPersona INT, @idPropiedad INT, @fecha DATE;
		SET @fecha = GETDATE()

		SELECT @idPersona = P.ID, @idPropiedad = Pr.ID
		FROM dbo.Persona P
		INNER JOIN dbo.Propiedad Pr
		ON Pr.NumFinca = @inNumFinca
		WHERE P.ValorDocId = @inValorDocId;
		IF EXISTS (SELECT 1 FROM dbo.Persona P WHERE P.ValorDocId = @inValorDocId)
			BEGIN
				SELECT @idPersona = P.ID
				FROM dbo.Persona P
				WHERE P.ValorDocId = @inValorDocId;

				IF EXISTS (SELECT 1 FROM dbo.Propiedad Pr WHERE Pr.NumFinca = @inNumFinca)
					BEGIN
						SELECT @idPropiedad = Pr.ID
						FROM dbo.Propiedad Pr
						WHERE Pr.NumFinca = @inNumFinca
				
						IF NOT EXISTS (
						SELECT 1 FROM dbo.PXP PP
						WHERE PP.IdPersona = @idPersona
						AND PP.IdPropiedad = @idPropiedad
						AND PP.FechaFin IS NULL)
							BEGIN
								BEGIN TRANSACTION tInsertarPersonaPropiedad
									INSERT INTO [dbo].[PXP] (
									IdPersona
									, IdPropiedad
									, FechaInicio
									, FechaFin
									)
									VALUES (
									@idPersona
									, @idPropiedad
									, @fecha
									, NULL
									)
								COMMIT TRANSACTION tInsertarPersonaPropiedad
							END
						ELSE
							SET @outResult=50010;
					END
				ELSE
					SET @outResult=50009;
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarPersonaPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_insertarPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarPropiedad]
	@inNumFinca INT,	 
	@inArea FLOAT,
	@inValor VARCHAR(128),
	@inTipoTerreno VARCHAR(128),
	@inTipoZona VARCHAR(128),
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
		SET @outResult=0;
		DECLARE @idTipoTerreno INT, @idTipoZona INT, @fecha DATE;
		SET @fecha = GETDATE()
		SELECT @idTipoTerreno = TT.ID, @idTipoZona = TZ.ID
		FROM dbo.TipoTerreno TT
		INNER JOIN dbo.TipoZona TZ
		ON TZ.Nombre = @inTipoZona
		WHERE TT.Nombre = @inTipoTerreno;
		IF NOT EXISTS (SELECT 1 FROM dbo.Propiedad P WHERE P.NumFinca = @inNumFinca)
			BEGIN
				BEGIN TRANSACTION tInsertarPropiedad
					INSERT INTO [dbo].[Propiedad] (
					NumFinca
					, Area
					, ValorFiscal
					, FechaRegistro
					, IdTipoTerreno
					, IdTipoZona
					)
					VALUES (
					@inNumFinca
					, @inArea
					, @inValor
					, @fecha
					, @idTipoTerreno
					, @idTipoZona
					)
				COMMIT TRANSACTION tInsertarPropiedad
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;
GO
/****** Object:  StoredProcedure [dbo].[proc_insertarUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarUsuario]
	@inUserName VARCHAR(128),	 
	@inPassword VARCHAR(128),
	@inTipoUsuario VARCHAR(128),
	@inValorDocId BIGINT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idPersona INT;
		SELECT @idPersona = P.ID
		FROM dbo.Persona P
		WHERE P.ValorDocId = @inValorDocId;
		IF EXISTS (SELECT 1 FROM dbo.Persona P WHERE P.ID = @idPersona)
			IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.IdPersona = @idPersona)
				IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.UserName = @inUserName)
					BEGIN
						BEGIN TRANSACTION tInsertarUsuario
							INSERT INTO [dbo].[Usuario] (
							UserName
							, [Password]
							, TipoUsuario
							, IdPersona
							)
							VALUES (
							@inUserName
							, @inPassword
							, @inTipoUsuario
							, @idPersona
							)
						COMMIT TRANSACTION tInsertarUsuario
					END
				ELSE
					SET @outResult=50010;
			ELSE
				SET @outResult=50009;
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarUsuario;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_insertarUsuarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarUsuarioPropiedad] 
	@inValorDocId BIGINT,
	@inNumFinca INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idUsuario INT, @idPropiedad INT, @fecha DATE;
		SET @fecha = GETDATE()
		
		IF EXISTS (
		SELECT 1 FROM dbo.Usuario U
		INNER JOIN dbo.Persona P
		ON P.ValorDocId = @inValorDocId
		WHERE U.IdPersona = P.ID
		)
			BEGIN
				SELECT @idUsuario = U.ID
				FROM dbo.Usuario U
				INNER JOIN dbo.Persona P
				ON P.ValorDocId = @inValorDocId
				WHERE U.IdPersona = P.ID;

				IF EXISTS (SELECT 1 FROM dbo.Propiedad Pr WHERE Pr.NumFinca = @inNumFinca)
					BEGIN
						SELECT @idPropiedad = Pr.ID
						FROM dbo.Propiedad Pr
						WHERE Pr.NumFinca = @inNumFinca
				
						IF NOT EXISTS (
						SELECT 1 FROM dbo.UXP UP
						WHERE UP.IdUsuario = @idUsuario
						AND UP.IdPropiedad = @idPropiedad
						AND UP.FechaFin IS NULL)
							BEGIN
								BEGIN TRANSACTION tInsertarPersonaPropiedad
									INSERT INTO [dbo].[UXP] (
									IdUsuario
									, IdPropiedad
									, FechaInicio
									, FechaFin
									)
									VALUES (
									@idUsuario
									, @idPropiedad
									, @fecha
									, NULL
									)
								COMMIT TRANSACTION tInsertarPersonaPropiedad
							END
						ELSE
							SET @outResult=50010;
					END
				ELSE
					SET @outResult=50009;
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarUsuarioPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_loginUsuario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_loginUsuario] (
	@inNombre VARCHAR(32),
	@inClave VARCHAR(32),
	@outResult INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	SET @outResult=0;
	
	IF NOT EXISTS
	(
		SELECT 1
		FROM Usuario U
		WHERE U.[UserName] = @inNombre
		AND U.[Password] = @inClave
	)
	BEGIN
		SET @outResult = 6000; -- credenciales incorrectos
		RAISERROR('Credenciales incorrectos',10,1) WITH NOWAIT;
		SELECT @outResult
		RETURN;
	END;

	IF EXISTS
	(
		SELECT 1
		FROM Usuario U
		WHERE U.[UserName] = @inNombre
		AND U.[Password] = @inClave
		AND U.[TipoUsuario] = 'Administrador'
	)
	BEGIN
		SET @outResult = 1; -- credenciales incorrectos
		SELECT @outResult
		RETURN;
	END;

	IF EXISTS
	(
		SELECT 1
		FROM Usuario U
		WHERE U.[UserName] = @inNombre
		AND U.[Password] = @inClave
		AND U.[TipoUsuario] = 'Propietario'
	)
	BEGIN
		SET @outResult = 2; -- credenciales incorrectos
		SELECT @outResult
		RETURN;
	END;

	-- selecciona todos los resultados que coincidan
	--SELECT
	--@outResult AS ExitCode,
	--U.[UserName],
	--U.[id]
	--FROM [dbo].Usuario AS U
	--WHERE	U.[UserName] = @inNombre
	--		AND U.[Password] = @inClave
	
	SET NOCOUNT OFF;
END;
GO
/****** Object:  StoredProcedure [dbo].[proc_obtenerTiposDocId]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_obtenerTiposDocId]
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT t.Nombre
	FROM dbo.TipoDocIdent t
	ORDER BY Nombre
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_obtenerTiposPago]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_obtenerTiposPago]
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT t.Nombre
	FROM dbo.TipoMedioPago t
	ORDER BY Nombre
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_obtenerTiposTerreno]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_obtenerTiposTerreno]
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TT.Nombre
	FROM dbo.TipoTerreno TT
	ORDER BY TT.Nombre
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_obtenerTiposZona]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_obtenerTiposZona]
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TZ.Nombre
	FROM dbo.TipoZona tZ
	ORDER BY TZ.Nombre
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_pagoFactura]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_pagoFactura]
	@inId INT,
	@inTipoPago VARCHAR(128),
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		DECLARE @aleatorio INT;
		SET @outResult=0;
		SET @aleatorio = FLOOR(RAND()*(99999-10000)+10000)

		WHILE EXISTS(
			SELECT 1 FROM dbo.ComprobantePago C
			WHERE C.NumReferencia = @aleatorio
			)
		BEGIN
			SET @aleatorio = FLOOR(RAND()*(99999-10000)+10000)
		END
		
		BEGIN TRANSACTION tPagoFactura
			INSERT dbo.ComprobantePago(ID,Fecha,NumReferencia,IdTipoMedioPago)
			SELECT @inId,
				GETDATE(),
				@aleatorio,
				T.ID
			FROM dbo.TipoMedioPago T
			WHERE @inTipoPago = T.Nombre

			UPDATE Factura
			SET IdEstado = 2
			WHERE ID = @inId
		COMMIT TRANSACTION tPagoFactura	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tPagoFactura;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
/****** Object:  StoredProcedure [dbo].[proc_propiedadesPropietario]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_propiedadesPropietario](
	@inUser VARCHAR(32),
	@outResult INT OUTPUT
	) AS
BEGIN

	SELECT P.ID, P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
	FROM dbo.Propiedad P
	INNER JOIN dbo.TipoZona TZ
	ON TZ.ID = P.IdTipoZona
	INNER JOIN dbo.TipoTerreno TT
	ON TT.ID = P.IdTipoTerreno
	INNER JOIN dbo.Usuario U
	ON @inUser = U.UserName
	INNER JOIN dbo.UXP UP
	ON UP.IdUsuario = U.ID AND UP.IdPropiedad = P.ID
END;



--SELECT * FROM Articulo
--EXEC proc_propiedadesPropietario 'jpbr66', 0
GO
/****** Object:  StoredProcedure [dbo].[proc_tblPersonaPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_tblPersonaPropiedad]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT PP.ID, P.Nombre, Pr.NumFinca, Pr.ID
	FROM dbo.PXP PP
	INNER JOIN dbo.Persona P
	ON P.ID = PP.IdPersona
	INNER JOIN dbo.Propiedad Pr
	ON Pr.ID = PP.IdPropiedad
END
GO
/****** Object:  StoredProcedure [dbo].[proc_tblPersonas]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_tblPersonas]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT P.ID, P.Nombre, TDI.Nombre, P.ValorDocId, P.email, P.telefono1, P.telefono2
	FROM dbo.Persona P
	INNER JOIN dbo.TipoDocIdent TDI
	ON P.IdTipoDoc = TDI.ID
END
GO
/****** Object:  StoredProcedure [dbo].[proc_tblPropiedades]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_tblPropiedades]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT P.ID, P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
	FROM dbo.Propiedad P
	INNER JOIN dbo.TipoZona TZ
	ON TZ.ID = P.IdTipoZona
	INNER JOIN dbo.TipoTerreno TT
	ON TT.ID = P.IdTipoTerreno
END
GO
/****** Object:  StoredProcedure [dbo].[proc_tblUsuarioPropiedad]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_tblUsuarioPropiedad]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT UP.ID, P.Nombre, Pr.NumFinca, Pr.ID
	FROM dbo.UXP UP
	INNER JOIN dbo.Usuario U
	ON U.ID = UP.IdUsuario
	INNER JOIN dbo.Persona P
	ON P.ID = U.IdPersona
	INNER JOIN dbo.Propiedad Pr
	ON Pr.ID = UP.IdPropiedad
END
GO
/****** Object:  StoredProcedure [dbo].[proc_tblUsuarios]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_tblUsuarios]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT U.ID, U.UserName, U.[Password], U.TipoUsuario, P.Nombre
	FROM dbo.Usuario U
	INNER JOIN dbo.Persona P
	ON P.ID = U.IdPersona
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MACHOTE]    Script Date: 11/11/2022 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_MACHOTE]
    -- PARAMETROS SEPARADOS POR COMAS Y LA PALABRA in
    -- EJEMPLO: @inNombre, @inClase
    @outResultCode INT OUTPUT   --ESTA VARIABLE DEBE SER INCLUIDA EN TODOS LOS SP
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- Se validan los datos de entrada, pues no estamos seguros que se validaron en capa logica.
	-- Validar que articulo exista.	
	BEGIN TRY
		-- Inicia codigo en el cual se captura errores		
		SET @outResultCode=0;  -- Por default codigo error 0 es que no hubo error		
		
        BEGIN
            SELECT [U.Username], [U.Password]
            FROM [dbo.Usuario U]            
            ORDER BY U.UserName;
        END;

	/*BEGIN TRANSACTION tSP_MACHOTE		-- NOMBRE DE LA TRANSACCION SIMILAR AL PROCEDURE PERO CON UNA "T" AL INICIO
			-- Obtenemos el idClaseArticulo con base al nombre de la clase de articulo
			-- A traves de un mapeo
			
			INSERT INTO dbo.Articulo(Nombre, IdClaseArticulo, Precio)       -- EJEMPLO DE TRANSACTION
			VALUES (@nombre, @idClase, @precio)

			-- salvamos en evento log el evento de actualizar el articulo
			-- INSERT INTO DBO.EventLog VALUES()
            
		COMMIT TRANSACTION tSP_MACHOTE	*/
	END TRY

	BEGIN CATCH		
		/*IF @@TRANCOUNT> 0  -- error sucedio dentro de la transaccion
		BEGIN
			ROLLBACK TRANSACTION tSP_MACHOTE; -- se deshacen los cambios realizados
		END;*/
		INSERT INTO dbo.BDErrors VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResultCode=50001;
	END CATCH
	SET NOCOUNT OFF;
END;

GO
USE [master]
GO
ALTER DATABASE [TerceraTarea] SET  READ_WRITE 
GO
