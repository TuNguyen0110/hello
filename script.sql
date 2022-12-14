Create database [Watch]
go
USE [Watch]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[user] [nvarchar](150) NOT NULL,
	[pass] [nvarchar](150) NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account Group]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account Group](
	[username] [nvarchar](150) NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Account Group] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [nvarchar](150) NOT NULL,
	[url] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Feature]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Feature](
	[fid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Group_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Watch]    Script Date: 7/16/2022 8:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Watch](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NULL,
	[image] [nvarchar](150) NULL,
	[price] [nvarchar](150) NULL,
	[title] [nvarchar](150) NULL,
	[description] [nvarchar](4000) NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_Watch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([user], [pass], [isAdmin]) VALUES (N'admin', N'123', 1)
INSERT [dbo].[Account] ([user], [pass], [isAdmin]) VALUES (N'mra', N'123', 2)
INSERT [dbo].[Account] ([user], [pass], [isAdmin]) VALUES (N'mrb', N'123', 0)
GO
INSERT [dbo].[Account Group] ([username], [gid]) VALUES (N'admin', 1)
INSERT [dbo].[Account Group] ([username], [gid]) VALUES (N'mra', 2)
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Rolex Submariner')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Rolex Air-King')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Rolex Yatch-Master')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Rolex Day-Date')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'Rolex DATEJUST')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Add new Watch', N'/add')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Edit Watch', N'/edit')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Detail', N'/detail')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'Search', N'/search')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'Manage', N'/manager')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (6, N'Delete', N'/delete')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (7, N'Home', N'/home')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (8, N'Contact', N'/contact')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (9, N'Load Product', N'/loadProduct')
GO
INSERT [dbo].[Group] ([gid], [gname]) VALUES (1, N'Admin')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (2, N'User')
GO
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (1, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (2, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (3, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (3, 2)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (4, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (4, 2)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (5, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (6, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (7, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (7, 2)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (8, 1)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (8, 2)
INSERT [dbo].[Group_Feature] ([fid], [gid]) VALUES (9, 1)
GO
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (4, N'SUBMARINER DATE 126618LN', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126618ln-0002.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'928.623.000', N'Oyster, 41 mm, vàng', N'OYSTER PERPETUAL SUBMARINER DATE BẰNG VÀNG 18 CT VỚI MIẾNG LÓT VÀNH ĐỒNG HỒ CERACHROM CHẤT LIỆU GỐM ĐEN VÀ MẶT ĐỒNG HỒ MÀU ĐEN CÓ VẠCH DẤU GIỜ PHÁT QUANG LỚN.', 1)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (5, N'SUBMARINER DATE 126613LN', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126613ln-0002.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'360.130.500', N'Oyster, 41 mm, Oystersteel và vàng', N'OYSTER PERPETUAL SUBMARINER DATE BẰNG THÉP OYSTERSTEEL VÀ VÀNG KIM VỚI MIẾNG LÓT VÀNH ĐỒNG HỒ CERACHROM CHẤT LIỆU GỐM ĐEN VÀ MẶT ĐỒNG HỒ MÀU ĐEN CÓ VẠCH DẤU GIỜ PHÁT QUANG LỚN.', 1)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (6, N'AIR-KING 126900', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126900-0001.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'180.065.500', N'Oyster, 40 mm, thép Oystersteel
', N'VỚI VỎ 40 MM BẰNG OYSTERSTEEL, DÂY ĐEO OYSTER VÀ MẶT ĐỒNG HỒ ĐEN ĐẶC TRƯNG, AIR-KING TIẾP NỐI DI SẢN HÀNG KHÔNG VĨNH CỬU CỦA ROLEX OYSTER NGUYÊN MẪU.', 2)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (7, N'YACHT-MASTER 42 226658', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m226658-0001.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'694.538.000', N'Oyster, 42 mm, vàng', N'ĐỒNG HỒ OYSTER PERPETUAL YACHT-MASTER 42 BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU ĐEN VÀ DÂY ĐEO OYSTERFLEX.', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (8, N'YACHT-MASTER 37 268622', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m268622-0002.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'282.960.000', N'Oyster, 37 mm, Oystersteel và bạch kim', N'ĐỒNG HỒ OYSTER PERPETUAL YACHT-MASTER 37 BẰNG THÉP OYSTERSTEEL VÀ BẠCH KIM VỚI DÂY ĐEO OYSTER.', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (9, N'YACHT-MASTER 37 268621', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m268621-0003.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'331.834.500', N'Oyster, 37 mm, Oystersteel và vàng Everose', N'ĐỒNG HỒ OYSTER PERPETUAL YACHT-MASTER 37 BẰNG THÉP OYSTERSTEEL VÀ VÀNG EVEROSE VỚI DÂY ĐEO OYSTER.', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (10, N'YACHT-MASTER 37 268655', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m268655-0019.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'1.000.649.000', N'Oyster, 37 mm, vàng Everose', N'Mẫu đồng hồ này đi kèm mặt số dát kim cương và vành đồng hồ xoay 2 chiều chia vạch 60 phút với miếng lót Cerachrom đen hiệu ứng mờ bằng chất liệu gốm, cùng phần chữ số nổi và vạch chia được phủ bóng', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (11, N'YACHT-MASTER 40 126622', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126622-0001.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'300.966.500', N'Oyster, 40 mm, Oystersteel và bạch kim', N'Mẫu đồng hồ này đi kèm mặt số slate và vành đồng hồ xoay hai chiều bằng chất liệu bạch kim với vạch chia 60 phút và các chữ số . Khả năng chống thấm nước và chất lượng bền bỉ của mẫu này khiến nó trở thành chiếc đồng hồ lý tưởng cho các môn thể thao dưới nước nói chung và bộ môn đua thuyền nói riêng.', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (12, N'YACHT-MASTER 40 126621', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126621-0001.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'365.275.500', N'Oyster, 40 mm, thép Oystersteel và vàng Everose', N'Mẫu đồng hồ này đi kèm mặt số màu chocolate và vành đồng hồ xoay hai chiều bằng chất liệu vàng Everose với vạch chia 60 phút và các chữ số . Khả năng chống thấm nước và chất lượng bền bỉ của mẫu này khiến nó trở thành chiếc đồng hồ lý tưởng cho các môn thể thao dưới nước nói chung và bộ môn đua thuyền nói riêng.', 3)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (13, N'DAY-DATE 40 228236', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m228236-0012.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'525.289.500', N'Oyster, 40 mm, bạch kim
', N'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 40 BẰNG BẠCH KIM VỚI MẶT SỐ MÀU XANH BĂNG, VÀNH ĐỒNG HỒ DẠNG KHÍA VÀ DÂY ĐEO PRESIDENT.', 4)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (14, N'DAY-DATE 36 128238', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m128238-0076.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'833.445.500', N'Oyster, 36 mm, vàng', N'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 36 BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU TRẮNG, VÀNH ĐỒNG HỒ DẠNG RÃNH VÀ DÂY ĐEO PRESIDENT.', 4)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (15, N'DAY-DATE 40228349RBR', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m228349rbr-0003.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'1,000,750,500', N'Oyster, 40 mm, vàng trắng và kim cương', N'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 40 BẰNG VÀNG TRẮNG 18CT VỚI MẶT SỐ MÀU ĐEN SÁNG, NẠM KIM CƯƠNG, VÀNH ĐỒNG HỒ NẠM KIM CƯƠNG VÀ DÂY ĐEO PRESIDENT.', 4)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (16, N'DAY-DATE 40 228238 ', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m228238-0042.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'918.333.500 ', N'Oyster, 40 mm, vàng', N'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 40 BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU TRẮNG, VÀNH ĐỒNG HỒ DẠNG RÃNH VÀ DÂY ĐEO PRESIDENT.', 4)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (17, N'DAY-DATE 36 128238', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m128238-0008.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'908.044.000', N'Oyster, 36 mm, vàng', N'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 36 BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU CHAMPAGNE, VÀNH ĐỒNG HỒ DẠNG RÃNH VÀ DÂY ĐEO PRESIDENT.', 4)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (18, N'DATEJUST 36 126233', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126233-0039.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'293.249.000', N'Oyster, 36 mm, Oystersteel và vàng', N'ĐỒNG HỒ OYSTER PERPETUAL DATEJUST 36 BẰNG THÉP OYSTERSTEEL VÀ VÀNG KIM ĐI KÈM MẶT SỐ MOTIF HỌA TIẾT GẤP NẾP ÁNH VÀNG VÀ DÂY ĐEO JUBILEE.', 5)
INSERT [dbo].[Watch] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (19, N'DATEJUST 36 126200', N'https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126200-0020.png?impolicy=v6-main-feature&c1x=1800&c1y=2800&imwidth=1920', N'177.493.000', N'Oyster, 36 mm, Oystersteel', N'ĐỒNG HỒ OYSTER PERPETUAL DATEJUST 36 BẰNG OYSTERSTEEL ĐI KÈM MẶT SỐ MOTIF HỌA TIẾT CÂY CỌ MÀU XANH OLIVE VÀ DÂY ĐEO OYSTER.', 5)
GO
ALTER TABLE [dbo].[Account Group]  WITH CHECK ADD  CONSTRAINT [FK_Account Group_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([user])
GO
ALTER TABLE [dbo].[Account Group] CHECK CONSTRAINT [FK_Account Group_Account]
GO
ALTER TABLE [dbo].[Account Group]  WITH CHECK ADD  CONSTRAINT [FK_Account Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Account Group] CHECK CONSTRAINT [FK_Account Group_Group]
GO
ALTER TABLE [dbo].[Group_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Group_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Group_Feature] CHECK CONSTRAINT [FK_Group_Feature_Feature]
GO
ALTER TABLE [dbo].[Group_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Group_Feature_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Group_Feature] CHECK CONSTRAINT [FK_Group_Feature_Group]
GO
