USE [master]
GO
/****** Object:  Database [elmassar_db]    Script Date: 18/02/2022 16:52:53 ******/
CREATE DATABASE [elmassar_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'elmassar_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\elmassar_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'elmassar_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\elmassar_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [elmassar_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [elmassar_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [elmassar_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [elmassar_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [elmassar_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [elmassar_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [elmassar_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [elmassar_db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [elmassar_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [elmassar_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [elmassar_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [elmassar_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [elmassar_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [elmassar_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [elmassar_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [elmassar_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [elmassar_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [elmassar_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [elmassar_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [elmassar_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [elmassar_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [elmassar_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [elmassar_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [elmassar_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [elmassar_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [elmassar_db] SET  MULTI_USER 
GO
ALTER DATABASE [elmassar_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [elmassar_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [elmassar_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [elmassar_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [elmassar_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [elmassar_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [elmassar_db] SET QUERY_STORE = OFF
GO
USE [elmassar_db]
GO
/****** Object:  Table [dbo].[Agence]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agence](
	[id_agence] [int] NOT NULL,
	[nom] [varchar](255) NULL,
	[adresse] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_agence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie_Chambre]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie_Chambre](
	[id_catech] [int] NOT NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_catech] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie_Hotel]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie_Hotel](
	[code] [int] NOT NULL,
	[Nb_etoile] [int] NULL,
	[Caracteristique] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambre]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambre](
	[num_chambre] [int] NOT NULL,
	[num_telephone] [int] NULL,
	[id_hotel] [int] NULL,
	[id_catech] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_clt] [int] NOT NULL,
	[nom] [varchar](255) NULL,
	[prenom] [varchar](255) NULL,
	[adresse] [varchar](255) NULL,
	[ville] [varchar](255) NULL,
	[codepostal] [varchar](255) NULL,
	[pays] [varchar](255) NULL,
	[telephone] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[num_facture] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consommation]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consommation](
	[num_conso] [int] NOT NULL,
	[DateConso] [date] NULL,
	[HeureConso] [datetime] NULL,
	[id_clt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_conso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enregistrer]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enregistrer](
	[num_conso] [int] NOT NULL,
	[id_hotel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facture]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facture](
	[num_facture] [int] NOT NULL,
	[prix] [float] NULL,
	[quantite] [int] NULL,
	[id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id_hotel] [int] NOT NULL,
	[Nom] [varchar](255) NULL,
	[Adresse] [varchar](255) NULL,
	[CPH] [varchar](255) NULL,
	[Telephone] [int] NULL,
	[code] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestation]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestation](
	[id_prestation] [int] NOT NULL,
	[Designation] [varchar](255) NULL,
	[id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prester]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prester](
	[id_clt] [int] NOT NULL,
	[id_prestation] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 18/02/2022 16:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[num_reservation] [int] NOT NULL,
	[DateDebut] [date] NULL,
	[DateFin] [date] NULL,
	[DatePayeArres] [date] NULL,
	[MontantArres] [date] NULL,
	[id_agence] [int] NULL,
	[num_chambre] [int] NULL,
	[id_clt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chambre]  WITH CHECK ADD FOREIGN KEY([id_catech])
REFERENCES [dbo].[Categorie_Chambre] ([id_catech])
GO
ALTER TABLE [dbo].[Chambre]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD FOREIGN KEY([num_facture])
REFERENCES [dbo].[Facture] ([num_facture])
GO
ALTER TABLE [dbo].[Consommation]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Enregistrer]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Enregistrer]  WITH CHECK ADD FOREIGN KEY([num_conso])
REFERENCES [dbo].[Consommation] ([num_conso])
GO
ALTER TABLE [dbo].[Facture]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([code])
REFERENCES [dbo].[Categorie_Hotel] ([code])
GO
ALTER TABLE [dbo].[Prestation]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Prester]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Prester]  WITH CHECK ADD FOREIGN KEY([id_prestation])
REFERENCES [dbo].[Prestation] ([id_prestation])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([id_agence])
REFERENCES [dbo].[Agence] ([id_agence])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([num_chambre])
REFERENCES [dbo].[Chambre] ([num_chambre])
GO
USE [master]
GO
ALTER DATABASE [elmassar_db] SET  READ_WRITE 
GO
