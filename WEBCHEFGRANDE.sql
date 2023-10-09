USE [master]
GO
/****** Object:  Database [WEBCHEFGRANDE]    Script Date: 8/10/2023 22:40:05 ******/
CREATE DATABASE [WEBCHEFGRANDE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBCHEFGRANDE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WEBCHEFGRANDE.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WEBCHEFGRANDE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WEBCHEFGRANDE_1.LDF' , SIZE = 7744KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WEBCHEFGRANDE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBCHEFGRANDE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET RECOVERY FULL 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET  MULTI_USER 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBCHEFGRANDE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEBCHEFGRANDE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEBCHEFGRANDE', N'ON'
GO
ALTER DATABASE [WEBCHEFGRANDE] SET QUERY_STORE = OFF
GO
USE [WEBCHEFGRANDE]
GO
/****** Object:  Table [dbo].[CARGO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGO](
	[ID_CARGO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRECARGO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CARGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[ID_CAT] [int] IDENTITY(1,1) NOT NULL,
	[ID_TIPO] [int] NULL,
	[NOMBRE_CAT] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFIGURACIONES]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIGURACIONES](
	[ID_CONF] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_CONF] [nvarchar](30) NULL,
	[VALOR_CONF] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CONF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[ID_FACUTAS] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NULL,
	[NRO_RESERVA] [int] NULL,
	[NYA_CLIENTE] [nvarchar](50) NULL,
	[MODO_PAGO] [nvarchar](50) NULL,
	[SUBTOTAL] [decimal](8, 2) NULL,
	[IGV] [decimal](8, 2) NULL,
	[TOTAL] [decimal](8, 2) NULL,
	[ESTADO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_FACUTAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITEM_MENU]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEM_MENU](
	[ID_ITEM] [int] IDENTITY(1,1) NOT NULL,
	[ID_CAT] [int] NULL,
	[ID_SUB] [int] NULL,
	[NOMBRE_ITEM] [nvarchar](max) NULL,
	[DESCRIPCION] [nvarchar](max) NULL,
	[PRECIO] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA_CABECERA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA_CABECERA](
	[NRO_RESERVA] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NULL,
	[NRO_MESA] [int] NULL,
	[FECHA] [nvarchar](max) NULL,
	[HORA] [nvarchar](max) NULL,
	[CANT_PERSONAS] [int] NULL,
	[ESTADO] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NRO_RESERVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA_DETALLES]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA_DETALLES](
	[ID_SET_RESERVA] [int] IDENTITY(1,1) NOT NULL,
	[NRO_RESERVA] [int] NULL,
	[ID_ITEM] [int] NULL,
	[CANTIDAD] [int] NULL,
	[COMENTARIO] [nvarchar](max) NULL,
	[ESTADO] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SET_RESERVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUB_CATEGORIAS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUB_CATEGORIAS](
	[ID_SUB] [int] IDENTITY(1,1) NOT NULL,
	[ID_CAT] [int] NULL,
	[NOMBRE_SUB] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SUB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_ITEM_MENU]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_ITEM_MENU](
	[ID_TIPO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_TIPO] [nvarchar](30) NULL,
	[ESTADO] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[USUARIO] [nvarchar](30) NULL,
	[PASS] [nvarchar](30) NULL,
	[ID_CARGO] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[APELLIDO] [nvarchar](50) NULL,
	[DNI] [nvarchar](8) NULL,
	[EMAIL] [nvarchar](20) NULL,
	[HRA_ENTRADA] [nvarchar](10) NULL,
	[HRA_SALIDA] [nvarchar](10) NULL,
	[TELEFONO] [nvarchar](9) NULL,
	[ESTADO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATEGORIAS]  WITH CHECK ADD FOREIGN KEY([ID_TIPO])
REFERENCES [dbo].[TIPO_ITEM_MENU] ([ID_TIPO])
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIOS] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD FOREIGN KEY([NRO_RESERVA])
REFERENCES [dbo].[RESERVA_CABECERA] ([NRO_RESERVA])
GO
ALTER TABLE [dbo].[ITEM_MENU]  WITH CHECK ADD FOREIGN KEY([ID_CAT])
REFERENCES [dbo].[CATEGORIAS] ([ID_CAT])
GO
ALTER TABLE [dbo].[ITEM_MENU]  WITH CHECK ADD FOREIGN KEY([ID_SUB])
REFERENCES [dbo].[SUB_CATEGORIAS] ([ID_SUB])
GO
ALTER TABLE [dbo].[RESERVA_CABECERA]  WITH CHECK ADD FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIOS] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[RESERVA_DETALLES]  WITH CHECK ADD FOREIGN KEY([ID_ITEM])
REFERENCES [dbo].[ITEM_MENU] ([ID_ITEM])
GO
ALTER TABLE [dbo].[RESERVA_DETALLES]  WITH CHECK ADD FOREIGN KEY([NRO_RESERVA])
REFERENCES [dbo].[RESERVA_CABECERA] ([NRO_RESERVA])
GO
ALTER TABLE [dbo].[SUB_CATEGORIAS]  WITH CHECK ADD FOREIGN KEY([ID_CAT])
REFERENCES [dbo].[CATEGORIAS] ([ID_CAT])
GO
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_CARGO])
REFERENCES [dbo].[CARGO] ([ID_CARGO])
GO
/****** Object:  StoredProcedure [dbo].[ADM_INSITEM]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_INSITEM]
@NOM_CAT  NVARCHAR(50),
@NOM_SUB  NVARCHAR(50),
@NOMBRE_ITEM  NVARCHAR(50),
@DESCRIPCION  NVARCHAR(50),
@PRECIO MONEY
AS
INSERT INTO ITEM_MENU VALUES((SELECT ID_CAT FROM CATEGORIAS WHERE NOMBRE_CAT=@NOM_CAT ),
(SELECT ID_SUB  FROM SUB_CATEGORIAS WHERE NOMBRE_SUB=@NOM_SUB),@NOMBRE_ITEM,@DESCRIPCION,@PRECIO)
GO
/****** Object:  StoredProcedure [dbo].[ADM_INSUSUARIO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_INSUSUARIO]
@USUARIO NVARCHAR(30),
@PASS NVARCHAR(30),
@NOM_CARGO NVARCHAR(50),
@NOMBRE NVARCHAR(50),
@APELLIDO NVARCHAR(50),
@DNI NVARCHAR(8),
@EMAIL NVARCHAR(20),
@HRA_ENTRADA NVARCHAR(10),
@HRA_SALIDA  NVARCHAR(10),
@TELEFONO NVARCHAR(9),
@ESTADO NVARCHAR(9)
AS
INSERT INTO USUARIOS VALUES (@USUARIO,@PASS,(SELECT ID_CARGO FROM CARGO WHERE NOMBRECARGO=@NOM_CARGO),
@NOMBRE,@APELLIDO,@DNI,@EMAIL,@HRA_ENTRADA,@HRA_SALIDA,@TELEFONO,@ESTADO)
GO
/****** Object:  StoredProcedure [dbo].[ADM_UPDITEM]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_UPDITEM]
@NOM_CAT  NVARCHAR(50),
@NOM_SUB  NVARCHAR(50),
@NOMBRE_ITEM  NVARCHAR(50),
@DESCRIPCION  NVARCHAR(50),
@PRECIO MONEY,
@IDITEM int
AS
UPDATE ITEM_MENU SET ID_CAT=(SELECT ID_CAT FROM CATEGORIAS WHERE NOMBRE_CAT=@NOM_CAT ),
ID_SUB =(SELECT ID_SUB  FROM SUB_CATEGORIAS WHERE NOMBRE_SUB=@NOM_SUB),
NOMBRE_ITEM=@NOMBRE_ITEM,DESCRIPCION=@DESCRIPCION,PRECIO=@PRECIO
WHERE ID_ITEM=@IDITEM
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERCATEGORIA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERCATEGORIA]
@NOMTIPO NVARCHAR(20)
AS
SELECT NOMBRE_CAT FROM CATEGORIAS C INNER JOIN TIPO_ITEM_MENU T
ON C.ID_TIPO=T.ID_TIPO WHERE T.NOMBRE_TIPO=@NOMTIPO
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERITEM_id]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[ADM_VERITEM_id]
@idItem int
AS
SELECT I.ID_ITEM,I.NOMBRE_ITEM,C.NOMBRE_CAT,S.NOMBRE_SUB ,I.DESCRIPCION,I.PRECIO FROM ITEM_MENU I INNER JOIN CATEGORIAS C
ON I.ID_CAT=C.ID_CAT
INNER JOIN SUB_CATEGORIAS S ON S.ID_SUB=I.ID_SUB where ID_ITEM=@idItem
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERITEMS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERITEMS]
AS
SELECT I.ID_ITEM,I.NOMBRE_ITEM,C.NOMBRE_CAT,S.NOMBRE_SUB ,I.DESCRIPCION,I.PRECIO FROM ITEM_MENU I INNER JOIN CATEGORIAS C
ON I.ID_CAT=C.ID_CAT
INNER JOIN SUB_CATEGORIAS S ON S.ID_SUB=I.ID_SUB
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERNOMCARGOS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERNOMCARGOS]
AS
SELECT NOMBRECARGO FROM CARGO
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERSUBCAT]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERSUBCAT]
@NOMCAT NVARCHAR(80)
AS
SELECT S.NOMBRE_SUB FROM SUB_CATEGORIAS S INNER JOIN CATEGORIAS C
ON C.ID_CAT=S.ID_CAT WHERE C.NOMBRE_CAT=@NOMCAT
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERTIPOITEM]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERTIPOITEM]
AS
SELECT NOMBRE_TIPO FROM TIPO_ITEM_MENU where ESTADO='activo'
GO
/****** Object:  StoredProcedure [dbo].[ADM_VERUSU]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADM_VERUSU]
AS
SELECT U.ID_USUARIO, U.USUARIO,U.PASS, C.NOMBRECARGO, NOMBRE, APELLIDO
,DNI ,EMAIL , HRA_ENTRADA,HRA_SALIDA  ,TELEFONO,ESTADO FROM USUARIOS U INNER JOIN CARGO C
ON U.ID_CARGO =C.ID_CARGO 
GO
/****** Object:  StoredProcedure [dbo].[CJ_CREAR_FACTURA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CJ_CREAR_FACTURA]
@ID_USUARIO INT ,
@NRO_RESERVA INT ,
@NYA_CLIENTE NVARCHAR(50),
@MODO_PAGO NVARCHAR(50),
@SUBTOTAL DECIMAL(8,2),
@IGV DECIMAL(8,2),
@TOTAL DECIMAL(8,2)
AS
INSERT INTO FACTURAS VALUES(@ID_USUARIO,@NRO_RESERVA ,@NYA_CLIENTE,@MODO_PAGO
,@SUBTOTAL,@IGV,@TOTAL,'CANCELADO')
GO
/****** Object:  StoredProcedure [dbo].[CJ_VER_DETALLES_PEDIDO_TODO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CJ_VER_DETALLES_PEDIDO_TODO]
@IDPEDIDO INT
AS
SELECT RD.ID_ITEM,I.NOMBRE_ITEM,RD.CANTIDAD,I.PRECIO,RD.CANTIDAD *I.PRECIO SUBTOTAL ,RD.COMENTARIO
FROM RESERVA_DETALLES RD
INNER JOIN ITEM_MENU I ON I.ID_ITEM=RD.ID_ITEM
INNER JOIN RESERVA_CABECERA RC ON RC.NRO_RESERVA=RD.NRO_RESERVA
WHERE  RC.NRO_RESERVA=@IDPEDIDO
GO
/****** Object:  StoredProcedure [dbo].[PA_CAMBIAR_ESTADO_DETALLE_RESERVA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[PA_CAMBIAR_ESTADO_DETALLE_RESERVA]
@ID_SET_RESERVA INT,
@ESTADO NVARCHAR(11)
AS
UPDATE RESERVA_DETALLES SET  ESTADO=@ESTADO  WHERE ID_SET_RESERVA=@ID_SET_RESERVA  
GO
/****** Object:  StoredProcedure [dbo].[PA_LOGIN_USUARIO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_LOGIN_USUARIO]
@USUARIO NVARCHAR(30),
@PASS NVARCHAR(30)
AS
SELECT U.ID_USUARIO,U.USUARIO  ,U.NOMBRE ,U.APELLIDO ,c.NOMBRECARGO  ,U.HRA_ENTRADA ,U.HRA_SALIDA 
FROM USUARIOS U INNER JOIN CARGO C ON C.ID_CARGO =U.ID_CARGO 
WHERE USUARIO =@USUARIO AND PASS =@PASS 
GO
/****** Object:  StoredProcedure [dbo].[PA_MOSTRAR_ESTADO_PEDIDO_MESA_IDMOZO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_MOSTRAR_ESTADO_PEDIDO_MESA_IDMOZO]
@ID_USUARIO INT,
@NRO_MESA INT,
@FECHA NVARCHAR(12)
AS
SELECT I.NOMBRE_ITEM ,RD.ESTADO FROM RESERVA_DETALLES RD INNER JOIN
RESERVA_CABECERA RC ON RD.NRO_RESERVA  =RC.NRO_RESERVA 
INNER JOIN ITEM_MENU I ON  RD.ID_ITEM =I.ID_ITEM 
WHERE RC.ID_USUARIO =@ID_USUARIO AND RC.NRO_MESA =@NRO_MESA 
AND RC.FECHA =@FECHA
GO
/****** Object:  StoredProcedure [dbo].[PA_MOSTRARCATEGORIA_NOM_TIPOM]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_MOSTRARCATEGORIA_NOM_TIPOM]
@NOMBRE_TIPO NVARCHAR(30)
AS
SELECT NOMBRE_CAT  FROM CATEGORIAS C INNER JOIN TIPO_ITEM_MENU T
ON C.ID_TIPO =T.ID_TIPO 
WHERE T.NOMBRE_TIPO  =@NOMBRE_TIPO  
GO
/****** Object:  StoredProcedure [dbo].[PA_MOSTRARTODAS_SUBCATEGORIAS_NOMCAT]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_MOSTRARTODAS_SUBCATEGORIAS_NOMCAT]
@NOMBRE_CAT NVARCHAR(30)
AS
SELECT S.NOMBRE_SUB FROM SUB_CATEGORIAS S INNER JOIN CATEGORIAS C
ON S.ID_CAT =C.ID_CAT 
WHERE C.NOMBRE_CAT =@NOMBRE_CAT
GO
/****** Object:  StoredProcedure [dbo].[PA_MOSTRARTODOS_ITEMMENU_NOMSUBCAT]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_MOSTRARTODOS_ITEMMENU_NOMSUBCAT]
@NOMBRE_SUB NVARCHAR(30)
AS
SELECT I.ID_ITEM ,I.NOMBRE_ITEM,I.PRECIO,I.DESCRIPCION FROM ITEM_MENU I INNER JOIN 
SUB_CATEGORIAS S ON I.ID_SUB =S.ID_SUB 
WHERE S.NOMBRE_SUB =@NOMBRE_SUB
GO
/****** Object:  StoredProcedure [dbo].[PA_MOSTRARTODOS_TIPOITEMSMENUS]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_MOSTRARTODOS_TIPOITEMSMENUS]
AS
SELECT NOMBRE_TIPO FROM TIPO_ITEM_MENU
GO
/****** Object:  StoredProcedure [dbo].[PA_TOMAR_DETALLE_RESERVA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_TOMAR_DETALLE_RESERVA]
@IDUSUARIO INT,
@ID_ITEM INT ,
@CANTIDAD INT,
@COMENTARIO NVARCHAR(50),
@ESTADO NVARCHAR(11)
AS
INSERT INTO RESERVA_DETALLES ( NRO_RESERVA,ID_ITEM ,CANTIDAD,COMENTARIO,ESTADO)
VALUES ((select top 1 NRO_RESERVA from RESERVA_CABECERA  where ID_USUARIO= @IDUSUARIO order by NRO_RESERVA desc)
 ,@ID_ITEM ,@CANTIDAD ,@COMENTARIO ,@ESTADO )
GO
/****** Object:  StoredProcedure [dbo].[PA_TOMAR_RESERVA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_TOMAR_RESERVA]
@ID_USUARIO INT,
@NRO_MESA INT,
@FECHA NVARCHAR(11),
@HORA NVARCHAR(11),
@CANT_PERSONAS INT,
@ESTADO NVARCHAR(11)
AS
INSERT INTO RESERVA_CABECERA(ID_USUARIO ,
FECHA ,HORA ,NRO_MESA ,CANT_PERSONAS,ESTADO)
 VALUES(@ID_USUARIO ,
@FECHA ,@HORA ,@NRO_MESA ,@CANT_PERSONAS,@ESTADO)
GO
/****** Object:  StoredProcedure [dbo].[PA_UPDATE_USUARIO]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PA_UPDATE_USUARIO]
@ID_USUARIO INT,
@PASS NVARCHAR(30)
AS
UPDATE USUARIOS SET PASS =@PASS  WHERE  ID_USUARIO=@ID_USUARIO 
GO
/****** Object:  StoredProcedure [dbo].[PA_VER_TODOS_DETALLES_RESERVA]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PA_VER_TODOS_DETALLES_RESERVA]
@FECHA NVARCHAR(11)
AS
SELECT RD.ID_SET_RESERVA ,U.NOMBRE ,U.APELLIDO,RC.NRO_MESA,I.NOMBRE_ITEM ,RD.CANTIDAD ,RD.COMENTARIO ,RD.ESTADO
FROM RESERVA_DETALLES RD INNER JOIN RESERVA_CABECERA RC ON
RD.NRO_RESERVA =RC.NRO_RESERVA  INNER JOIN ITEM_MENU I ON
 RD.ID_ITEM =I.ID_ITEM INNER JOIN USUARIOS  U ON
 RC.ID_USUARIO =U.ID_USUARIO
 WHERE RC.FECHA =@FECHA AND ( RD.ESTADO='por atender' or RD.ESTADO='atendiendo')
 ORDER BY RC.ID_USUARIO
GO
/****** Object:  StoredProcedure [dbo].[VER_PEDIDOS_ATENDIDOS_HOY]    Script Date: 8/10/2023 22:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VER_PEDIDOS_ATENDIDOS_HOY]
@FECHA VARCHAR(20)
AS
select RC.NRO_RESERVA, RC.NRO_MESA ,U.NOMBRE,U.APELLIDO,RC.FECHA from RESERVA_CABECERA RC
INNER JOIN USUARIOS U ON RC.ID_USUARIO=U.ID_USUARIO
WHERE RC.ESTADO='ATENDIDO' AND RC.FECHA=@FECHA
GO
USE [master]
GO
ALTER DATABASE [WEBCHEFGRANDE] SET  READ_WRITE 
GO
