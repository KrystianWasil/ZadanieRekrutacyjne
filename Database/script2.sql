USE [master]
GO
/****** Object:  Database [test1]    Script Date: 9/30/2024 6:16:49 PM ******/
CREATE DATABASE [test1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test1', FILENAME = N'C:\Users\krystianwasil\test1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test1_log', FILENAME = N'C:\Users\krystianwasil\test1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test1] SET ARITHABORT OFF 
GO
ALTER DATABASE [test1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test1] SET  MULTI_USER 
GO
ALTER DATABASE [test1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [test1] SET QUERY_STORE = OFF
GO
USE [test1]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/30/2024 6:16:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password_hash] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/30/2024 6:16:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[PESEL] [varchar](11) NULL,
	[number] [varchar](15) NULL,
	[adress] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [login], [password_hash]) VALUES (1009, N'Admin', N'12345')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Alicja', N'Jol', N'ala12@gmail.com', N'12013076561', N'606785453', N'Ludwika Zamenhofa 102')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Kacper', N'Kacperczyk', N'kacp555@gmail.com', N'56463433422', N'456666777', N'Dantesa 7')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Michal', N'Pietraszak', N'pietraszak63@gmail.com', N'63122072972', N'897787777', N'Eugeniusza Bodo 12')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Franciszek', N'Rudolf', N'brazylijski12@gmail.com', N'74071135141', N'555432672', N'Grunwaldzka 123')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Johny', N'Doeski', N'john.doe@example.com', N'12345678901', N'123456789', N'Main Street 1')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'James', N'Smith', N'jane.smith@example.com', N'98765432113', N'987654321', N'Oak Avenue 5, Town')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Michael', N'Johnson', N'michael.johnson@example.com', N'12398765412', N'555123456', N'Pine Road 7, Village')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Emily', N'Williams', N'emily.williams@example.com', N'11122233344', N'999888777', N'Maple Drive 10, City')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Roberto', N'Brown', N'robert.brown@example.com', N'10293847566', N'123123122', N'Elm Street 20, Town')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Laura', N'Miller', N'laura.miller@example.com', N'56473829101', N'321321321', N'Birch Road 3, Village')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'David', N'Wilson', N'david.wilson@example.com', N'12398765423', N'456456456', N'Willow Avenue 4, City')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Sophia', N'Moore', N'sophia.moore@example.com', N'34567890123', N'789789789', N'Cedar Street 2, Town')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Zdzichu', N'Konipichu', N'zxcvbnm12@gmail.com', N'78080855523', N'521123342', N'Lublin 20-453, ul. Kruczkowskiego 21')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Kamil', N'Walczuk', N'waczewski123@gmail.com', N'71341234321', N'123456712', N'Zamenhofa 122')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Filip', N'Jojuch', N'jojuch2@gmail.com', N'12345432423', N'333111454', N'Sienkiewcza 14')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Kacper', N'Wojtysiak', N'kacperowskiw12@gmail.com', N'98123453221', N'567457233', N'Sienkiewicza 14')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Cristiano', N'Ronaldo', N'roland78@gmail.com', N'45435354341', N'454676666', N'Rolanda 34')
INSERT [dbo].[Users] ([firstName], [lastName], [email], [PESEL], [number], [adress]) VALUES (N'Jan', N'Bednaner', N'gasgdsa@gmail.com', N'46543563432', N'553433233', N'Kiszy 45')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_PESEL]    Script Date: 9/30/2024 6:16:50 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UC_PESEL] UNIQUE NONCLUSTERED 
(
	[PESEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_email]    Script Date: 9/30/2024 6:16:50 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [unique_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_number]    Script Date: 9/30/2024 6:16:50 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [unique_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [test1] SET  READ_WRITE 
GO
