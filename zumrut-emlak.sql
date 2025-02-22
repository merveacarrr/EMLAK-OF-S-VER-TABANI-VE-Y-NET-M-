USE [master]
GO
/****** Object:  Database [ZümrütEmlak]    Script Date: 8.01.2025 19:35:22 ******/
CREATE DATABASE [ZümrütEmlak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZümrütEmlak', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ZümrütEmlak.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ZümrütEmlak_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ZümrütEmlak_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ZümrütEmlak] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZümrütEmlak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZümrütEmlak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ZümrütEmlak] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ZümrütEmlak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZümrütEmlak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZümrütEmlak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ZümrütEmlak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZümrütEmlak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ZümrütEmlak] SET  MULTI_USER 
GO
ALTER DATABASE [ZümrütEmlak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZümrütEmlak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZümrütEmlak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZümrütEmlak] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ZümrütEmlak]
GO
/****** Object:  Table [dbo].[TblCalisanBilgi]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCalisanBilgi](
	[CalisanID] [tinyint] NULL,
	[CalisanAd] [varchar](15) NULL,
	[CalisanSoyad] [varchar](20) NULL,
	[CalisanTelefon] [char](10) NULL,
	[MusteriID] [tinyint] NULL,
	[EvID] [tinyint] NULL,
	[MaasMiktar] [money] NULL,
	[Calisanmemnuniyet] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblEv]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblEv](
	[EvID] [tinyint] NULL,
	[ilanID] [tinyint] NULL,
	[EvSahibiID] [tinyint] NULL,
	[ApartmanAdi] [varchar](15) NULL,
	[MetrekareMiktarı] [int] NULL,
	[OdaSayisi] [tinyint] NULL,
	[DaireNo] [tinyint] NULL,
	[ilID] [tinyint] NULL,
	[Fiyat] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblEvSahibiBilgi]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblEvSahibiBilgi](
	[EvSahibiID] [tinyint] NULL,
	[EvSahibiAd] [varchar](15) NULL,
	[EvSahibiSoyad] [varchar](20) NULL,
	[EvSahibiTelefon] [char](10) NULL,
	[IbanNo] [sql_variant] NULL,
	[CalisanID] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblilanBilgi]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblilanBilgi](
	[ilanID] [tinyint] NULL,
	[ilanTuru] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblilBilgi]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblilBilgi](
	[ilID] [tinyint] NULL,
	[ilAd] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblMusteriBilgi]    Script Date: 8.01.2025 19:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblMusteriBilgi](
	[MusteriID] [tinyint] NULL,
	[MusteriAd] [varchar](15) NULL,
	[MusteriSoyad] [varchar](20) NULL,
	[EvID] [tinyint] NULL,
	[ilanID] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (10, N'Aykut', N'Öner', N'5389101509', 50, 111, 15500.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (11, N'Ezgi', N'Sarış', N'5323471313', 52, 108, 18000.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (12, N'Tolga', N'Göktaş', N'5414162776', 53, 106, 25500.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (13, N'Aymina', N'Alpay', N'5383979658', 54, 101, 27000.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (14, N'Eren', N'Yıldız', N'5457328743', 56, 109, 17500.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (15, N'Başak', N'Koç', N'5511035543', 55, 105, 12000.0000, NULL)
INSERT [dbo].[TblCalisanBilgi] ([CalisanID], [CalisanAd], [CalisanSoyad], [CalisanTelefon], [MusteriID], [EvID], [MaasMiktar], [Calisanmemnuniyet]) VALUES (16, N'Engin', N'Atalar', N'5348655627', 51, 110, 20000.0000, NULL)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (101, 1, 207, N'Karakaya', 135, 3, 5, 31, 1275000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (102, 1, 205, N'Çınar', 175, 4, 6, 34, 1575000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (104, 1, 202, N'Yalım', 125, 3, 2, 34, 560000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (105, 1, 200, N'Ihlamur', 190, 4, 12, 34, 958000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (106, 1, 203, N'Yakamoz', 150, 4, 5, 30, 1816000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (107, 1, 208, N'Akarsu', 150, 4, 2, 32, 1400000)
INSERT [dbo].[TblEv] ([EvID], [ilanID], [EvSahibiID], [ApartmanAdi], [MetrekareMiktarı], [OdaSayisi], [DaireNo], [ilID], [Fiyat]) VALUES (111, 1, 209, N'Orkun', 165, 5, 2, 31, 12500000)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (200, N'Melike', N'Şahin', N'5327458819', CAST(Convert(text, N'TR680006200000222990028402') AS varchar(26)), 15)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (201, N'Burak', N'Yenier', N'5346598451', CAST(Convert(text, N'TR440006111009796458841301') AS varchar(26)), 11)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (202, N'Demet', N'Kaya', N'5446325669', CAST(Convert(text, N'TR560001001579958810945502') AS varchar(26)), 16)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (203, N'Pelin', N'Özkan', N'5382378956', CAST(Convert(text, N'TR310001000437952287615001') AS varchar(26)), 12)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (204, N'Emir', N'Yıldırım', N'5078943376', CAST(Convert(text, N'TR600001001579905184674002') AS varchar(26)), 10)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (205, N'Arzu', N'Özkaynak', N'5398867441', CAST(Convert(text, N'TR180001002351873716625001') AS varchar(26)), 11)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (206, N'Selim', N'Çetinkaya', N'5314585340', CAST(Convert(text, N'TR400001000145917785471502') AS varchar(26)), 14)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (207, N'Derin', N'Sayer', N'5496184322', CAST(Convert(text, N'TR690001003268546629458901') AS varchar(26)), 13)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (208, N'Batu', N'Armas', N'5357291002', CAST(Convert(text, N'TR360004004657782334632502') AS varchar(26)), 13)
INSERT [dbo].[TblEvSahibiBilgi] ([EvSahibiID], [EvSahibiAd], [EvSahibiSoyad], [EvSahibiTelefon], [IbanNo], [CalisanID]) VALUES (209, N'Mira', N'Doğrular', N'5426245725', CAST(Convert(text, N'TR500004007836546582259201') AS varchar(26)), 10)
INSERT [dbo].[TblilanBilgi] ([ilanID], [ilanTuru]) VALUES (1, N'Satilik')
INSERT [dbo].[TblilanBilgi] ([ilanID], [ilanTuru]) VALUES (2, N'Kiralik')
INSERT [dbo].[TblilBilgi] ([ilID], [ilAd]) VALUES (30, N'İstanbul')
INSERT [dbo].[TblilBilgi] ([ilID], [ilAd]) VALUES (31, N'Ankara')
INSERT [dbo].[TblilBilgi] ([ilID], [ilAd]) VALUES (32, N'Bursa')
INSERT [dbo].[TblilBilgi] ([ilID], [ilAd]) VALUES (33, N'İzmir')
INSERT [dbo].[TblilBilgi] ([ilID], [ilAd]) VALUES (34, N'Trabzon')
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (50, N'Yonca', N'Akay', 111, 1)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (51, N'Murat', N'Sezer', 110, 2)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (52, N'Azat', N'Akdeniz', 108, 2)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (53, N'Berrin', N'Verim', 106, 1)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (54, N'Hakan', N'Pektaş', 101, 1)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (55, N'Firuze', N'Güney', 105, 1)
INSERT [dbo].[TblMusteriBilgi] ([MusteriID], [MusteriAd], [MusteriSoyad], [EvID], [ilanID]) VALUES (56, N'Egemen', N'Özel', 109, 2)
USE [master]
GO
ALTER DATABASE [ZümrütEmlak] SET  READ_WRITE 
GO
