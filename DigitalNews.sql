USE [Digital]
GO
/****** Object:  Table [dbo].[digital]    Script Date: 7/2/2021 1:50:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[digital](
	[ID] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[author] [nvarchar](max) NOT NULL,
	[timePost] [date] NOT NULL,
	[shortDes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_digital] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (1, N'The first news from Lorem', N' Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed dui urna, porta sit amet sapien id, tincidunt viver
                        ra turpis. Mauris a semper erat. Ut at lorem odio. Quis
                        que ac libero vitae neque molestie congue...Lorem ipsum
                        dolor sit amet, consectetur adipiscing elit.Sed dui urna
                        , porta sit amet sapien id, tincidunt viver ra turpis.
                        Mauris a semper erat. Ut at lorem odio. Quisque ac libe
                        ro vitae neque molestie congue...Lorem ipsum dolor sit 
                        amet, consectetur adipiscing elit.Sed dui urna, porta 
                        sit amet sapien id, tincidunt viver ra turpis', N'i3.jpg', N'Alexander Tores', CAST(N'2019-05-03' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed dui urna, porta sit amet sapien id, tincidunt viver
                        ra turpis. Mauris a semper erat. Ut at lorem odio. Quis
                        que ac libero vitae neque molestie congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. ')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (9, N'We dont talk anymonre', N'Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio.', N'i2.jpg', N'Son Tung MTP', CAST(N'2021-05-06' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.
')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (11, N'News about crypto', N'Molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio.', N'i2.jpg', N'Alexander Tores', CAST(N'2020-01-10' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.
Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.
Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.
Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.Nisl tincidunt eget nullam non.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (12, N'HuyHayHat On Top Trending', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet,', N'i1.jpg', N'Huyhayhat', CAST(N'2020-10-10' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.
')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (23, N'News about crypto', N' Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed dui urna, porta sit amet sapien id, tincidunt viver
                        ra turpis. Mauris a semper erat. Ut at lorem odio. Quis
                        que ac libero vitae neque molestie congue...Lorem ipsum
                        dolor sit amet, consectetur adipiscing elit.Sed dui urna
                        , porta sit amet sapien id, tincidunt viver ra turpis.
                        Mauris a semper erat. Ut at lorem odio. Quisque ac libe
                        ro vitae neque molestie congue...Lorem ipsum dolor sit 
                        amet, consectetur adipiscing elit.Sed dui urna, porta 
                        sit amet sapien id, tincidunt viver ra turpis. Mauris a
                        semper erat. Ut at lorem odio. Quisque ac libero vitae 
                        neque molestie congue...Lorem ipsum dolor sit amet,', N'i1.jpg', N'Robeto Caslot', CAST(N'2018-02-03' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed dui urna, porta sit amet sapien id, tincidunt viver
                        ra turpis. Mauris a semper erat. Ut at lorem odio. Quis
                        que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. ')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (32, N'What Does The Fox Say', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet,', N'i3.jpg', N'RoBinSon Do', CAST(N'2021-07-10' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. ')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (44, N'Send It To My Phone', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet,', N'i1.jpg', N'Bin Tran', CAST(N'2019-11-04' AS Date), N'Molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (55, N'HuyHayHat On Top Trending', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet,', N'i1.jpg', N'Bin Tran', CAST(N'2018-05-07' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (98, N'Making security feeds smarter via machine learning', N'Molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libero vitae neque molestie congue... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio.', N'i1.jpg', N'Benjamin Cher ', CAST(N'2017-11-11' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dui urna, porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quis que ac libero vitae neque molestie congue...Lorem ipsum dolor sit amet, consectetur')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (234, N'The first news from Lorem', N' Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed dui urna, porta sit amet sapien id, tincidunt viver
                        ra turpis. Mauris a semper erat. Ut at lorem odio. Quis
                        que ac libero vitae neque molestie congue...Lorem ipsum
                        dolor sit amet, consectetur adipiscing elit.Sed dui urna
                        , porta sit amet sapien id, tincidunt viver ra turpis.
                        Mauris a semper erat. Ut at lorem odio. Quisque ac libe
                        ro vitae neque molestie congue...Lorem ipsum dolor sit 
                        amet, consectetur adipiscing elit.Sed dui urna, porta 
                        sit amet sapien id, tincidunt viver ra turpis', N'i1.jpg', N'Alexander Tores', CAST(N'2021-02-04' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed dui urna , porta sit amet sapien id, tincidunt viver ra turpis. Mauris a semper erat. Ut at lorem odio. Quisque ac libe ro vitae neque molestie congue.')
GO
