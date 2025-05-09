USE [Khoa_Luan]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItem_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cart_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Size] [varchar](15) NULL,
	[Quantity] [int] NOT NULL,
	[Price_AtTime] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ProductName] [nvarchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[CartItem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Cart_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Created_Date] [datetime] NULL,
	[Is_Active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cart_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](64) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[Image_Url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatHistory]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatHistory](
	[Chat_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Response] [nvarchar](max) NULL,
	[SentAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Chat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailConfirmations]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailConfirmations](
	[Confirmation_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Confirmation_Code] [varchar](100) NOT NULL,
	[Expiration_Date] [datetime] NOT NULL,
	[Is_Used] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Confirmation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailConfirmations]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailConfirmations](
	[Mail_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[Email_Sent] [bit] NULL,
	[Sent_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItem_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Size] [varchar](15) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Order_Date] [datetime] NULL,
	[Total_Amount] [decimal](18, 2) NOT NULL,
	[Order_Status] [nvarchar](50) NULL,
	[Shipping_Address] [nvarchar](255) NULL,
	[Email] [varchar](50) NULL,
	[Phone_Number] [varchar](15) NULL,
	[Is_Confirmed] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtpConfirmations]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtpConfirmations](
	[Otp_ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Otp_Code] [varchar](10) NOT NULL,
	[Created_At] [datetime] NOT NULL,
	[Is_Used] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Otp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](64) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[AverageRating] [decimal](3, 2) NOT NULL,
	[TotalSold] [int] NOT NULL,
	[Category_Id] [int] NULL,
	[Created_Date] [date] NULL,
	[Image_Url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductSize_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NULL,
	[Size] [nvarchar](15) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price_AtTime] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductSize_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Review_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NULL,
	[User_ID] [int] NULL,
	[Rating] [int] NULL,
	[Comment] [nvarchar](255) NULL,
	[Review_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Review_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Full_Name] [nvarchar](255) NULL,
	[Role] [varchar](16) NULL,
	[Created_Date] [date] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[DateOfBirth] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 4/15/2025 7:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[WishList_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Added_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[WishList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Description], [CreatedDate], [Image_Url]) VALUES (1, N'Nike', N'Nike là một trong những thương hiệu giày thể thao và quần áo nổi tiếng nhất thế giới, được biết đến với sự sáng tạo và chất lượng cao. Thành lập vào năm 1964, Nike không chỉ cung cấp các sản phẩm giày thể thao mà còn đa dạng hóa trong các mặt hàng thời trang, quần áo và phụ kiện cho nhiều môn thể thao khác nhau. Nike luôn tiên phong trong việc áp dụng công nghệ tiên tiến vào các thiết kế của mình, như công nghệ đệm khí Air Max, Flyknit và React, giúp cải thiện hiệu suất thi đấu và mang lại sự thoải mái tối đa cho người dùng. Slogan nổi tiếng của Nike, "Just Do It," đã trở thành biểu tượng của sự kiên trì và tinh thần vượt qua thử thách. Sản phẩm của hãng được thiết kế dành riêng cho các vận động viên, từ chuyên nghiệp đến nghiệp dư, với các dòng sản phẩm nổi bật như Nike Air Jordan, Nike Air Force 1, và Nike Free. Bên cạnh đó, Nike cũng đẩy mạnh các chiến dịch quảng cáo mạnh mẽ và hợp tác với những ngôi sao thể thao hàng đầu như Michael Jordan, LeBron James, Serena Williams, và nhiều người khác, giúp củng cố vị thế của mình trong ngành công nghiệp thể thao và thời trang toàn cầu.', CAST(N'2025-03-19' AS Date), N'5kvrgy.jpg')
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Description], [CreatedDate], [Image_Url]) VALUES (2, N'Adidas', N'Adidas là một thương hiệu thể thao hàng đầu thế giới, nổi tiếng với các sản phẩm giày dép, quần áo và phụ kiện chất lượng cao. Được thành lập vào năm 1949 tại Đức bởi Adolf Dassler, Adidas không chỉ là một trong những thương hiệu thể thao lâu đời mà còn là biểu tượng của phong cách và hiệu suất. Sản phẩm của Adidas được yêu thích bởi cả vận động viên chuyên nghiệp và người tiêu dùng bình thường nhờ vào sự kết hợp hoàn hảo giữa thiết kế thời trang và công nghệ tiên tiến. Adidas nổi bật với ba sọc đặc trưng trên các sản phẩm của mình, tạo nên dấu ấn riêng biệt. Hãng liên tục cải tiến công nghệ với những dòng sản phẩm nổi tiếng như Adidas Ultraboost, Yeezy, và NMD. Các công nghệ tiên tiến của Adidas như Boost, Primeknit, và Torsion System đã thay đổi cách người dùng trải nghiệm giày thể thao, mang lại sự thoải mái, hỗ trợ tối ưu và độ bền cao. Adidas không chỉ tập trung vào thể thao mà còn xây dựng những dòng sản phẩm thời trang cao cấp qua các hợp tác với các nhà thiết kế và nghệ sĩ nổi tiếng như Kanye West, Stella McCartney, và Pharrell Williams. Với triết lý “Impossible is Nothing” (Không có gì là không thể), Adidas luôn khuyến khích sự sáng tạo và đổi mới trong mọi lĩnh vực từ thời trang, thể thao đến văn hóa đường phố.', CAST(N'2025-03-19' AS Date), N'5s5whi.jpg')
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Description], [CreatedDate], [Image_Url]) VALUES (4, N'New Balance', N'New Balance là một thương hiệu giày thể thao nổi tiếng với sự chú trọng vào chất lượng, sự thoải mái, và tính hiệu suất. Được thành lập vào năm 1906 tại Boston, Mỹ, New Balance bắt đầu với việc sản xuất các sản phẩm hỗ trợ bàn chân, và sau đó mở rộng sang sản xuất giày thể thao chuyên dụng. Điểm nổi bật của New Balance là sự kết hợp giữa thiết kế cổ điển và công nghệ hiện đại, với mục tiêu tạo ra những đôi giày không chỉ đẹp mắt mà còn hỗ trợ tối đa cho người dùng trong các hoạt động thể thao và hàng ngày. New Balance nổi tiếng với những dòng sản phẩm như 990, 574, và Fresh Foam, đáp ứng nhu cầu của nhiều đối tượng khách hàng từ các vận động viên chạy bộ, người chơi thể thao cho đến những người tìm kiếm sự thoải mái trong cuộc sống thường ngày. Thương hiệu này luôn chú trọng đến sự vừa vặn hoàn hảo và cung cấp nhiều lựa chọn kích cỡ, độ rộng khác nhau để phù hợp với mọi kiểu chân. Ngoài việc sản xuất tại các nhà máy toàn cầu, New Balance tự hào giữ lại một phần quy trình sản xuất tại Mỹ và Anh, nhấn mạnh sự cẩn thận và tỉ mỉ trong từng chi tiết. Với phương châm “We were born to move” (Chúng ta sinh ra để di chuyển), New Balance tiếp tục thúc đẩy sự sáng tạo trong thiết kế, mang lại những sản phẩm chất lượng cao và tiện dụng cho người tiêu dùng.', CAST(N'2025-03-19' AS Date), N'xe4zle.jpg')
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Description], [CreatedDate], [Image_Url]) VALUES (5, N'Onitsuka Tiger', N'Onitsuka Tiger là một thương hiệu giày nổi tiếng của Nhật Bản, được thành lập vào năm 1949 bởi Kihachiro Onitsuka. Thương hiệu này bắt đầu với sứ mệnh sản xuất giày thể thao để cải thiện sức khỏe và tinh thần của thanh niên Nhật Bản sau Thế chiến thứ hai. Onitsuka Tiger nổi tiếng với các thiết kế cổ điển mang đậm nét retro, kết hợp với sự tinh tế trong từng chi tiết. Đây là một trong những thương hiệu tiên phong trong việc kết hợp phong cách thể thao và thời trang, mang lại sự thanh lịch nhưng không kém phần năng động. Biểu tượng dễ nhận diện của Onitsuka Tiger chính là những đường sọc chéo đặc trưng trên mỗi đôi giày, được giới thiệu lần đầu trên dòng sản phẩm Mexico 66 vào thập niên 1960. Thiết kế này đã trở thành dấu ấn đặc trưng của hãng và vẫn được ưa chuộng cho đến ngày nay. Ngoài việc tập trung vào các dòng giày thể thao cổ điển, Onitsuka Tiger còn sản xuất các sản phẩm thời trang đường phố, kết hợp giữa di sản truyền thống và phong cách hiện đại. Sự hợp tác với nhiều nhà thiết kế và thương hiệu quốc tế đã giúp Onitsuka Tiger trở thành một biểu tượng thời trang toàn cầu, yêu thích bởi cả giới trẻ và những người yêu thích phong cách vintage. Thương hiệu này thể hiện sự hài hòa giữa vẻ đẹp cổ điển Nhật Bản và tính ứng dụng cao, tạo nên sự khác biệt trong thế giới giày dép.', CAST(N'2025-03-19' AS Date), N'cywwqv.jpg')
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Description], [CreatedDate], [Image_Url]) VALUES (6, N'Puma', N'Puma là một trong những thương hiệu thể thao hàng đầu thế giới, nổi tiếng với các sản phẩm giày dép, quần áo và phụ kiện thể thao. Được thành lập vào năm 1948 tại Đức bởi Rudolf Dassler, Puma đã trở thành biểu tượng toàn cầu nhờ sự kết hợp giữa thiết kế sáng tạo, hiệu suất thể thao, và phong cách thời trang. Thương hiệu này nổi bật với biểu tượng chú báo đen, đại diện cho sự nhanh nhẹn, mạnh mẽ và quyết đoán. Puma không chỉ tập trung vào việc sản xuất giày thể thao cho các môn như bóng đá, chạy bộ, và bóng rổ, mà còn mở rộng sang thời trang đường phố và thời trang cao cấp. Những dòng giày nổi bật của Puma như Puma Suede, Puma RS-X, và Puma Future luôn được ưa chuộng bởi cả vận động viên và người dùng yêu thích phong cách thể thao thời trang. Công nghệ tiên tiến như Puma Ignite và Puma Nitro giúp tăng cường hiệu suất và mang lại sự thoải mái tối đa cho người dùng. Puma cũng nổi tiếng với các hợp tác độc đáo với nhiều ngôi sao thể thao và nghệ sĩ quốc tế như Usain Bolt, Rihanna, và Dua Lipa, mang đến những sản phẩm không chỉ chất lượng mà còn mang tính biểu tượng. Với phương châm "Forever Faster," Puma không ngừng đổi mới và phát triển để cung cấp các sản phẩm mang tính năng cao và phong cách cho cả vận động viên lẫn người tiêu dùng thời trang.', CAST(N'2025-03-19' AS Date), N'vn3v4l.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OtpConfirmations] ON 

INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (8, N'trieulop9320172018@gmail.com', N'850085', CAST(N'2025-04-14T20:01:09.053' AS DateTime), 1)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (9, N'lngoctrieu203@gmail.com', N'348068', CAST(N'2025-04-14T20:08:08.150' AS DateTime), 1)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (13, N'alo@gmail.cco', N'586108', CAST(N'2025-04-15T08:56:27.283' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (18, N'alo@gmail.ccom', N'111273', CAST(N'2025-04-15T09:33:29.257' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (26, N'demo@gmail.co', N'776606', CAST(N'2025-04-15T10:02:58.110' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (27, N'alo@gmail.c', N'126729', CAST(N'2025-04-15T10:03:13.853' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (34, N'trieulop9320172018@gmail.com', N'840973', CAST(N'2025-04-15T10:28:45.603' AS DateTime), 1)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (35, N'trieulop9320172018@gmail.com', N'358912', CAST(N'2025-04-15T10:30:13.827' AS DateTime), 1)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (38, N'lngoctrieu203@gmail.com', N'755709', CAST(N'2025-04-15T03:48:44.033' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (40, N'trieulop9320172018@gmail.com', N'304818', CAST(N'2025-04-15T03:52:20.627' AS DateTime), 1)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (41, N'lntgame123@gmail.com', N'352293', CAST(N'2025-04-15T03:53:21.367' AS DateTime), 0)
INSERT [dbo].[OtpConfirmations] ([Otp_ID], [Email], [Otp_Code], [Created_At], [Is_Used]) VALUES (42, N'trieulam.dev.work@gmail.com', N'817380', CAST(N'2025-04-15T03:53:39.930' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[OtpConfirmations] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (1, N'Giày adidas 4DFWD Pulse Core Black White Q46450', CAST(4500000.00 AS Decimal(18, 2)), N'Giày Adidas 4DFWD Pulse Core Black White Q46450 là một đôi giày chạy bộ được thiết kế để mang lại sự thoải mái và hiệu suất tối đa. Đôi giày có đế giữa được làm bằng công nghệ 4D, một loại vật liệu in 3D được tạo thành từ các sợi được định hình để hấp thụ lực tác động và giúp bạn chạy mượt mà hơn.Adidas 4DFWD Pulse Core Black White Q46450 được làm từ da cao cấp với phần đế ngoài bằng cao su. Đôi giày có thiết kế cổ thấp, giúp bạn dễ dàng di chuyển và linh hoạt hơn.Adidas 4DFWD Pulse Core Black White Q46450 là một đôi giày thời trang và năng động. Đôi giày có thể được phối với nhiều trang phục khác nhau, từ quần jeans đến quần short. Adidas 4DFWD Pulse Core Black White Q46450 là một đôi giày phù hợp cho cả nam và nữ.Nếu bạn đang tìm kiếm một đôi giày chạy bộ thời trang và hiệu suất cao, Adidas 4DFWD Pulse Core Black White Q46450 là một lựa chọn tuyệt vời. Đôi giày có thiết kế đẹp mắt, chất liệu cao cấp và giá cả phải chăng.Ngoài ra, Adidas 4DFWD Pulse Core Black White Q46450 còn có một điểm nhấn đặc biệt đó là phần đế giữa được làm bằng công nghệ 4D, mang lại sự thoải mái và hỗ trợ tối đa cho người đi. Đây là một đôi giày dành cho những ai yêu thích sự thời trang và hiệu suất cao.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 2, CAST(N'2025-03-19' AS Date), N'1pyg4q.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (2, N'Giày Air Jordan 1 Low Yellow Ochre 553560-072', CAST(2500000.00 AS Decimal(18, 2)), N'Giày Air Jordan 1 Low Yellow Ochre 553560-072 là một lựa chọn không thể bỏ qua cho những ai yêu thích dòng Jordan. Thiết kế cổ điển kết hợp với tông màu vàng tươi giúp mẫu giày này dễ nhận diện ngay từ cái nhìn đầu tiên. Đây là một phiên bản thuộc dòng Jordan 1 Low, tập trung vào sự thoải mái khi mang hàng ngày.Phần upper của giày được làm từ chất liệu da tổng hợp và vải lưới. Điều này giúp giày bền và thoáng khí, phù hợp với mọi điều kiện thời tiết. Đế giày cao su đi kèm với lớp đệm mềm, mang lại cảm giác êm ái khi di chuyển. Điểm nổi bật chính là hệ thống lỗ thông hơi, giúp chân không bị bí khi mang lâu.Form giày thiết kế chuẩn, ôm chân mà không gây cảm giác khó chịu. Đặc biệt, đôi này có khả năng phối đồ linh hoạt, phù hợp cho cả phong cách thể thao và dạo phố. Dù mang để chơi thể thao hay đi làm, mẫu giày vẫn giữ được phong độ thẩm mỹ. Logo Swoosh và biểu tượng Jumpman được đặt khéo léo, tạo điểm nhấn mà không quá nổi bật.Đánh giá tổng thể, Giày Air Jordan 1 Low Yellow Ochre xứng đáng điểm 9/10. Đây là lựa chọn lý tưởng cho những ai cần một đôi giày chất lượng và đa dụng. Tuy nhiên, cần lưu ý về việc bảo quản da để giữ giày luôn mới và bền.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'uvomqk.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (3, N'Giày Chạy Nam Adidas Response Super 3.0 GW1376', CAST(2500000.00 AS Decimal(18, 2)), N'Giày Adidas Response Super 3.0 GW1376 là một đôi giày chạy bộ tuyệt vời cho những người mới bắt đầu và những người chạy bộ trung cấp. Đôi giày được thiết kế để cung cấp sự thoải mái, hỗ trợ và độ bền cho những người chạy bộ.Adidas Response Super 3.0 GW1376 được làm từ chất liệu cao cấp, bao gồm lưới thoáng khí ở phần trên và đế ngoài bằng cao su bền. Đôi giày có thiết kế vừa vặn và linh hoạt, giúp bạn dễ dàng di chuyển và thoải mái khi chạy.Adidas Response Super 3.0 GW1376 được trang bị đệm Bounce ở đế giữa, mang lại sự thoải mái và đàn hồi cho mỗi bước chân. Đôi giày cũng có hệ thống hỗ trợ Torsion System ở phần giữa bàn chân, giúp ổn định và hỗ trợ bàn chân khi chạy.Adidas Response Super 3.0 GW1376 là một đôi giày chạy bộ tuyệt vời cho những người mới bắt đầu và những người chạy bộ trung cấp. Đôi giày cung cấp sự thoải mái, hỗ trợ và độ bền cho những người chạy bộ, giúp bạn có những trải nghiệm chạy bộ tuyệt vời.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 2, CAST(N'2025-03-19' AS Date), N'4xjyut.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (4, N'Giày Jordan 1 High Pollen 555088-701', CAST(6500000.00 AS Decimal(18, 2)), N'Jordan 1 High Pollen 555088-701 là một sản phẩm đáng chú ý từ dòng Air Jordan. Được thiết kế với sự kết hợp màu sắc táo bạo giữa vàng ong và đen, đôi giày này thu hút ánh nhìn ngay từ cái nhìn đầu tiên.Thiết kế của Jordan 1 High Pollen tập trung vào tính năng và sự thoải mái. Phần thân giày được làm từ da cao cấp, mang lại cảm giác mềm mại nhưng vẫn rất bền bỉ. Đế giày bằng cao su cung cấp độ bám tốt, hỗ trợ tối ưu cho các hoạt động ngoài trời và trong nhà.Phần cổ giày cao giúp bảo vệ mắt cá chân, đồng thời mang đến phong cách cổ điển đặc trưng của dòng Jordan 1. Lớp lót bên trong êm ái, tạo cảm giác thoải mái suốt cả ngày dài. Các chi tiết may tinh tế, logo Nike và Jordan rõ nét, làm tăng thêm giá trị thẩm mỹ của sản phẩm.Tổng kết, Jordan 1 High Pollen 555088-701 là một sự lựa chọn tuyệt vời cho những ai yêu thích phong cách thể thao, năng động. Thiết kế đẹp mắt, chất lượng vượt trội và tính năng linh hoạt khiến đôi giày này xứng đáng với điểm số 8.5/10.', 40, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'rkxlte.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (5, N'Giày Jordan 1 Low ‘Vintage Grey’ 553558-053', CAST(4900000.00 AS Decimal(18, 2)), N'Giày Jordan 1 Low ‘Vintage Grey’ 553558-053 mang đến một sự kết hợp hài hòa giữa thiết kế cổ điển và hiện đại. Phần thân giày sử dụng chất liệu da và vải, với màu xám chủ đạo. Các chi tiết màu trắng và đen thêm phần tinh tế, tạo nên một diện mạo sạch sẽ và gọn gàng.Thiết kế của Jordan 1 Low ‘Vintage Grey’ không chỉ chú trọng vào vẻ ngoài mà còn đảm bảo sự thoải mái. Đế giày được làm từ cao su bền bỉ, có khả năng bám đường tốt. Công nghệ đệm khí Air giúp giảm chấn, mang lại sự êm ái cho mỗi bước di chuyển. Đặc biệt, phần cổ giày và lưỡi gà được lót đệm, tạo cảm giác dễ chịu cho người mang.Giày Jordan 1 Low ‘Vintage Grey’ thích hợp cho nhiều hoàn cảnh khác nhau. Bạn có thể sử dụng khi đi làm, đi học, hoặc thậm chí trong những buổi dạo phố. Thiết kế linh hoạt, dễ phối đồ giúp bạn tự tin hơn trong mọi hoạt động hàng ngày.Với những đặc điểm nổi bật, Jordan 1 Low ‘Vintage Grey’ 553558-053 xứng đáng được đánh giá cao. Sản phẩm này không chỉ đáp ứng nhu cầu về thẩm mỹ mà còn về tính năng. Điểm số 8.5/10 là hoàn toàn xứng đáng cho sự kết hợp tuyệt vời giữa phong cách và hiệu năng của đôi giày này.', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'0jp0y2.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (6, N'Giày Jordan 1 Mid ‘Hyper Royal’ 554724-077', CAST(4500000.00 AS Decimal(18, 2)), N'Jordan 1 Mid ‘Hyper Royal’ 554724-077 là một sản phẩm đáng chú ý từ Nike. Đôi giày này nổi bật với phối màu xanh hoàng gia, kết hợp cùng các chi tiết màu trắng và đen, tạo nên một diện mạo mạnh mẽ và năng động.Thiết kế của Jordan 1 Mid ‘Hyper Royal’ 554724-077 mang đến sự thoải mái và độ bền. Đế giày làm từ cao su chắc chắn, giúp tăng cường độ bám và ổn định khi di chuyển. Công nghệ Air-Sole trong đế giày giúp giảm chấn, mang lại cảm giác êm ái cho người mang. Phần thân giày sử dụng chất liệu da cao cấp, kết hợp với vải lưới, giúp tăng độ bền và khả năng thông thoáng.Tổng kết, Jordan 1 Mid ‘Hyper Royal’ 554724-077 là một lựa chọn tuyệt vời cho những ai yêu thích sự kết hợp giữa phong cách và chức năng. Với thiết kế đẹp mắt và tính năng ưu việt, đôi giày này xứng đáng nhận được điểm số 8.5/10.', 40, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'0nvk0e.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (7, N'Giày Jordan 1 Mid ‘Turf Orange’ DD6834-802', CAST(4500000.00 AS Decimal(18, 2)), N'Giày Jordan 1 Mid ‘Turf Orange’ DD6834-802 là một lựa chọn đáng chú ý cho người yêu thích giày thể thao. Đôi giày này có màu cam đậm, kết hợp với các chi tiết trắng và đen, tạo nên một tổng thể hài hòa và ấn tượng.Thiết kế của Jordan 1 Mid ‘Turf Orange’ tập trung vào sự tiện dụng và bền bỉ. Phần đế giày làm từ cao su chắc chắn, mang lại độ bám tốt trên nhiều bề mặt. Công nghệ Air-Sole trong đế giữa giúp giảm chấn hiệu quả, mang đến sự thoải mái khi di chuyển suốt cả ngày. Phần trên của giày được làm từ da tổng hợp và vải, đảm bảo độ bền và khả năng thoáng khí tốt.Điểm nhấn của đôi giày này nằm ở logo Swoosh nổi bật, cùng với các chi tiết khâu tỉ mỉ. Jordan 1 Mid ‘Turf Orange’ không chỉ là một đôi giày thể thao thông thường mà còn là một phụ kiện thời trang, dễ dàng phối hợp với nhiều loại trang phục khác nhau. Dây giày chắc chắn, giúp giày ôm sát chân, tạo cảm giác an toàn khi sử dụng.Một điểm cộng lớn nữa của Jordan 1 Mid ‘Turf Orange’ là sự đa dụng. Bạn có thể mang nó khi đi làm, đi chơi hay thậm chí', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'bxmekv.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (8, N'Giày Jordan 1 Mid “Signal Blue” DD6834-402', CAST(4500000.00 AS Decimal(18, 2)), N'Jordan 1 Mid “Signal Blue” DD6834-402 là mẫu giày mang đậm phong cách và sự tinh tế. Thiết kế này thu hút ngay từ cái nhìn đầu tiên với màu xanh nổi bật, phối hợp cùng các chi tiết trắng và đen, tạo nên một diện mạo hiện đại và đầy cuốn hút.Phần thân giày được làm từ chất liệu da tổng hợp, mang lại cảm giác chắc chắn và bền bỉ. Đế giày được thiết kế với công nghệ đệm khí Air, giúp tăng cường sự thoải mái và giảm chấn khi di chuyển. Các đường nét trên giày được chăm chút tỉ mỉ, từ lớp phủ bóng bẩy đến các đường may đều đặn, tạo nên một sản phẩm hoàn thiện và đẹp mắt.Thiết kế của Jordan 1 Mid “Signal Blue” không chỉ chú trọng đến vẻ ngoài mà còn đảm bảo tính năng vượt trội. Đế ngoài bằng cao su với các rãnh chống trượt giúp tăng độ bám trên nhiều bề mặt khác nhau, từ đó hỗ trợ tối đa cho người dùng trong các hoạt động hàng ngày hoặc chơi thể thao.Đáng chú ý là phần cổ giày được thiết kế ôm sát nhưng vẫn đảm bảo độ thoải mái, giúp bảo vệ mắt cá chân mà không gây khó chịu. Điều này đặc biệt hữu ích khi bạn cần vận động nhiều hoặc sử dụng giày trong thời gian dài.Jordan 1 Mid “Signal Blue” DD6834-402 là lựa chọn lý tưởng cho những ai yêu thích sự kết hợp giữa phong cách và hiệu năng. Với thiết kế nổi bật, chất liệu bền bỉ và tính năng vượt trội, đôi giày này chắc chắn sẽ làm hài lòng người dùng. Đánh giá chung, sản phẩm xứng đáng nhận điểm số 8.5/10 nhờ sự hoàn hảo trong cả thiết kế và chức năng.', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'tqgjgj.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (9, N'Giày New Balance 550 White Blue Red NB550NCH', CAST(2500000.00 AS Decimal(18, 2)), N'Giày New Balance 550 White Blue Red NB550NCH được đánh giá 9/10. Đây là mẫu giày thể thao kết hợp giữa thiết kế cổ điển và màu sắc nổi bật, mang lại phong cách trẻ trung và năng động cho người sử dụng.Khi mang giày, cảm giác thoải mái và chắc chắn là điểm nhấn. Đế giày được thiết kế với độ bám tốt, giúp bạn tự tin di chuyển trên nhiều loại bề mặt, từ đường phố đến sân thể thao.Về thiết kế, New Balance 550 White Blue Red NB550NCH nổi bật với sự phối hợp giữa ba màu trắng, xanh dương và đỏ. Sự kết hợp này không chỉ mang lại vẻ ngoài cuốn hút mà còn dễ dàng phối hợp với nhiều trang phục khác nhau, từ thể thao đến trang phục hàng ngày.Chất liệu của giày được chọn lọc cẩn thận, đảm bảo độ bền cao và giữ được form dáng sau thời gian dài sử dụng. Điều này làm tăng giá trị của sản phẩm, đặc biệt với những ai tìm kiếm sự kết hợp giữa phong cách và chất lượng.Tổng kết, New Balance 550 White Blue Red NB550NCH là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 40, 0, CAST(0.00 AS Decimal(3, 2)), 0, 4, CAST(N'2025-03-19' AS Date), N'nihalj.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (10, N'Giày New Balance 550 White Blue Yellow NB550NCG', CAST(2800000.00 AS Decimal(18, 2)), N'Giày New Balance 550 White Blue Yellow NB550NCG được đánh giá 9/10. Đây là mẫu giày thể thao kết hợp giữa thiết kế cổ điển và màu sắc hiện đại, mang lại phong cách trẻ trung và năng động cho người sử dụng.Khi mang giày, người dùng sẽ cảm nhận được sự thoải mái và chắc chắn. Đế giày có độ bám tốt, giúp bạn tự tin di chuyển trên nhiều loại bề mặt, từ đường phố đến sân thể thao.Về thiết kế, New Balance 550 White Blue Yellow NB550NCG nổi bật với sự phối hợp giữa màu trắng, xanh dương và vàng. Màu sắc này không chỉ mang lại vẻ ngoài tươi mới mà còn dễ dàng phối hợp với nhiều trang phục khác nhau, từ thể thao đến thời trang dạo phố.Chất liệu của giày được chọn lọc kỹ lưỡng, đảm bảo độ bền cao và giữ được form dáng sau thời gian dài sử dụng. Điều này làm tăng giá trị của sản phẩm, đặc biệt với những ai tìm kiếm sự kết hợp giữa phong cách và chất lượng.Tổng kết, New Balance 550 White Blue Yellow NB550NCG là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 20, 0, CAST(0.00 AS Decimal(3, 2)), 0, 4, CAST(N'2025-03-19' AS Date), N'imk0f5.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (11, N'Giày New Balance 550 White Red BB550SE1', CAST(2800000.00 AS Decimal(18, 2)), N'Giày New Balance 550 White Red BB550SE1 đạt điểm 9/10. Đây là một mẫu giày thể thao kết hợp giữa thiết kế cổ điển và sự hiện đại, mang lại phong cách độc đáo cho người sử dụng.Khi mang giày, người dùng sẽ cảm nhận được sự thoải mái và chắc chắn. Đế giày được thiết kế với độ bám tốt, giúp bạn di chuyển tự tin trên nhiều loại bề mặt, từ đường phố đến sân thể thao.Về thiết kế, New Balance 550 White Red BB550SE1 nổi bật với sự phối hợp giữa màu trắng và đỏ, tạo nên vẻ ngoài mạnh mẽ và cá tính. Màu sắc này không chỉ dễ phối hợp với nhiều trang phục mà còn giúp người mang thể hiện phong cách riêng.Chất liệu của giày được chọn lọc cẩn thận, đảm bảo độ bền cao, giúp sản phẩm giữ được form dáng và chất lượng sau thời gian dài sử dụng. Điều này làm tăng giá trị sử dụng, đặc biệt cho những ai tìm kiếm sự kết hợp giữa phong cách và chất lượng.Tổng kết, New Balance 550 White Red BB550SE1 là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 4, CAST(N'2025-03-19' AS Date), N'c5aylh.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (12, N'Giày Nike Air Force 1 Low White Orange DV0788-102', CAST(3500000.00 AS Decimal(18, 2)), N'Giày Nike Air Force 1 Low White Orange DV0788-102 là một phiên bản khác biệt của dòng Air Force 1 truyền thống. Với tông màu chủ đạo trắng kết hợp cùng điểm nhấn cam, đôi giày tạo nên sự tương phản rõ rệt, mang lại cảm giác tươi mới mà vẫn giữ được nét đặc trưng cổ điển.Phần thân giày được làm từ chất liệu da bền bỉ, có độ hoàn thiện cao, mang lại cảm giác vừa vặn và thoải mái khi di chuyển. Điểm nhấn logo Nike màu cam trên thân giày làm nổi bật thiết kế và tạo sự cuốn hút. Đế giày làm từ cao su có khả năng chống trơn trượt tốt, tăng độ bám trên nhiều bề mặt. Hệ thống đệm Air ở đế giữa giúp giảm thiểu áp lực, hỗ trợ đôi chân khi vận động.Mẫu giày này phù hợp cho nhiều tình huống khác nhau, từ đi chơi, đi làm đến các hoạt động thể thao nhẹ. Người dùng có thể kết hợp với nhiều phong cách thời trang, từ đơn giản, năng động đến thanh lịch. Nike Air Force 1 Low White Orange không chỉ là lựa chọn thời trang mà còn mang lại sự thoải mái trong quá trình sử dụng lâu dài.Với thiết kế, chất lượng và sự đa năng trong sử dụng, mẫu giày này xứng đáng nhận được đánh giá 9/10. Tuy nhiên, việc giữ sạch sẽ là một điểm cần lưu ý do màu trắng dễ bị bẩn. Nếu bạn đang tìm kiếm một đôi giày vừa thời trang vừa bền bỉ, đây là lựa chọn đáng để cân nhắc.', 20, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'vk1pzc.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (13, N'Giày Nike Air Jordan 1 High Royal Toe 575441-041', CAST(5500000.00 AS Decimal(18, 2)), N'Giày Nike Air Jordan 1 High Royal Toe 575441-041 là một đôi giày đặc biệt từ dòng Jordan. Sản phẩm này mang đến sự kết hợp hoàn hảo giữa màu xanh hoàng gia, trắng và đen, tạo nên một diện mạo mạnh mẽ và nổi bật. Đây là một phiên bản không thể thiếu cho các tín đồ của Jordan.Thiết kế của Jordan 1 High Royal Toe chú trọng đến cả phong cách lẫn sự thoải mái. Đôi giày được làm từ chất liệu da cao cấp, mang lại cảm giác mềm mại nhưng chắc chắn. Phần đế giày sử dụng công nghệ tiên tiến, đảm bảo sự thoải mái và ổn định khi di chuyển.Một điểm nhấn khác của sản phẩm là phần cổ giày cao, hỗ trợ tốt cho cổ chân, giảm nguy cơ chấn thương khi chơi thể thao hay hoạt động mạnh. Đôi giày này cũng dễ dàng kết hợp với nhiều phong cách trang phục khác nhau, từ thể thao đến dạo phố.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 1, CAST(N'2025-03-19' AS Date), N'jin1wm.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (14, N'Giày Onitsuka Tiger Alliance Red/White', CAST(2500000.00 AS Decimal(18, 2)), N'Mẫu giày có thân màu đỏ đậm kết hợp với các chi tiết trắng, mang lại sự nổi bật và cá tính. Thiết kế năng động, đế giữa hỗ trợ tốt cho các hoạt động ngoài trời. Phù hợp cho người yêu thích phong cách thời trang thể thao.', 20, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'pfnd34.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (15, N'Giày Onitsuka Tiger Corsair Black/White', CAST(2500000.00 AS Decimal(18, 2)), N'Mẫu giày mang phong cách cổ điển với màu đen chủ đạo và các sọc trắng đặc trưng của Onitsuka Tiger. Đế giày bền bỉ và chắc chắn, phù hợp cho các hoạt động thường ngày.', 10, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'o5n5q5.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (16, N'Giày Onitsuka Tiger GSM Black/Gold', CAST(2300000.00 AS Decimal(18, 2)), N'Đôi giày mang phong cách tối giản với màu đen chủ đạo cùng các chi tiết vàng, tạo điểm nhấn sang trọng. Phần đế cao su dày giúp êm ái và ổn định khi di chuyển. Đây là lựa chọn lý tưởng cho những ai yêu thích sự thanh lịch.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'3rfzvj.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (17, N'Giày Onitsuka Tiger GSM White/Grey', CAST(500000.00 AS Decimal(18, 2)), N'Một thiết kế cổ điển của dòng giày thể thao từ thương hiệu Onitsuka Tiger. Mẫu giày này mang phong cách tối giản, phù hợp cho những người yêu thích sự thanh lịch và tiện dụng. Với tông màu chủ đạo là trắng, kết hợp với các chi tiết xám trên phần sọc đặc trưng, giày mang lại vẻ ngoài nhã nhặn nhưng không kém phần nổi bật.Phần thân giày được làm từ chất liệu da cao cấp, đảm bảo độ bền bỉ và thoáng khí, giúp đôi chân luôn cảm thấy thoải mái. Đế giữa êm ái, hỗ trợ tốt trong các hoạt động hàng ngày, kết hợp với đế ngoài cao su bền bỉ, giúp tăng cường độ bám trên nhiều loại bề mặt. Thiết kế tổng thể của Onitsuka Tiger GSM White/Grey mang hơi hướng cổ điển nhưng không lỗi thời, là lựa chọn lý tưởng cho những ai muốn kết hợp giữa phong cách thể thao và thời trang đường phố.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'jwynff.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (18, N'Giày Onitsuka Tiger GSM White/Red', CAST(2400000.00 AS Decimal(18, 2)), N'Đôi giày có thiết kế đơn giản với màu trắng làm chủ đạo, kết hợp các sọc đỏ mang lại điểm nhấn năng động. Chất liệu da cao cấp và đế cao su dày giúp đôi chân luôn êm ái. Phù hợp cho cả phong cách thể thao và dạo phố.', 30, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'kz4ezf.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (19, N'Giày Onitsuka Tiger Mexico 66 Black/Gold', CAST(2800000.00 AS Decimal(18, 2)), N'Với thân giày màu đen kết hợp các đường sọc màu vàng kim nổi bật, đôi giày này thể hiện sự sang trọng và cá tính. Thiết kế cổ điển và đế cao su bền bỉ mang đến sự thoải mái và độ bám tốt trên nhiều bề mặt.', 10, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'ugyejx.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (20, N'Giày Onitsuka Tiger Mexico 66 Blue/White', CAST(2500000.00 AS Decimal(18, 2)), N'Đôi giày mang phong cách cổ điển Mexico 66, với thiết kế thân giày màu trắng chủ đạo cùng các sọc xanh dương, tạo nên vẻ thanh lịch và trẻ trung. Chất liệu vải lưới kết hợp da tổng hợp giúp thoáng khí, phù hợp cho các hoạt động hàng ngày.', 10, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'u32zjk.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (21, N'Giày Onitsuka Tiger Mexico 66 Slip-on Blue/Red', CAST(2300000.00 AS Decimal(18, 2)), N'Với thiết kế không dây tiện lợi, đôi giày này mang lại sự thoải mái khi mang vào và tháo ra. Màu sắc xanh và đỏ tạo sự nổi bật trên nền trắng, làm nên vẻ ngoài năng động và trẻ trung.', 10, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'abvnjz.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (22, N'Giày Onitsuka Tiger Mexico 66 White Black', CAST(1500000.00 AS Decimal(18, 2)), N'Giày Onitsuka Tiger Mexico 66 là phiên bản kinh điển của dòng Mexico 66, nổi bật với sự kết hợp màu sắc tinh tế. Phần thân giày có màu trắng làm chủ đạo, tạo nên sự thanh lịch và dễ phối đồ, kết hợp với sọc đen đặc trưng chạy dọc hai bên, tạo điểm nhấn đầy cá tính. Phần gót giày được trang trí với chi tiết màu vàng kim, mang lại vẻ sang trọng và nổi bật.Chất liệu da mềm của thân giày kết hợp với các chi tiết may tinh tế mang đến cảm giác vừa vặn và thoải mái khi mang. Đế giày làm từ cao su chắc chắn, đảm bảo độ bám tốt trên nhiều bề mặt, phù hợp cho các hoạt động hàng ngày hoặc các buổi dạo phố. Thiết kế retro cổ điển của giày Onitsuka Tiger Mexico 66 White/Black/Gold không chỉ mang lại sự thoải mái mà còn là sự lựa chọn lý tưởng cho những ai yêu thích phong cách thể thao pha lẫn thời trang.', 5, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'ntwkkc.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (23, N'Giày Onitsuka Tiger Mexico 66 Yellow/Black', CAST(2600000.00 AS Decimal(18, 2)), N'Thiết kế nổi bật với màu vàng rực rỡ và các sọc đen cá tính, đôi giày này là biểu tượng của phong cách retro thể thao. Thân giày làm từ da tổng hợp, mang lại độ bền và thoải mái khi sử dụng.', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 5, CAST(N'2025-03-19' AS Date), N'cs3y41.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (24, N'Giày Puma Clyde Court Reform Red', CAST(8500000.00 AS Decimal(18, 2)), N'Giày Puma Clyde Court Reform Red là mẫu giày bóng rổ hiện đại, nổi bật với màu đỏ đầy ấn tượng, mang lại phong cách mạnh mẽ và cá tính. Lấy cảm hứng từ dòng giày cổ điển Clyde của Puma, đôi giày này được cải tiến với công nghệ tiên tiến, mang đến hiệu suất tối ưu cho các vận động viên và người yêu thích thời trang thể thao. Phần thân giày được làm từ chất liệu vải dệt cao cấp, ôm sát và co giãn tốt, mang đến cảm giác vừa vặn và thoải mái. Hệ thống đệm IGNITE Foam cùng đế giữa được thiết kế đặc biệt giúp tăng cường độ nảy và độ ổn định, hỗ trợ tối đa trong các hoạt động trên sân đấu. Đế ngoài cao su với các họa tiết rãnh giúp tăng độ bám, phù hợp cho mọi bề mặt sân. Puma Clyde Court Reform Red không chỉ là một đôi giày thể thao, mà còn là tuyên ngôn phong cách mạnh mẽ, sẵn sàng đồng hành cùng bạn trong mọi trận đấu và hoạt động thường ngày.', 5, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'b9a7af59-a35a-4245-a738-df7dfa0bb6d0.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (25, N'Giày Puma Cell Alien OG Blue ', CAST(1500000.00 AS Decimal(18, 2)), N'Giày Puma Cell Alien OG Blue là mẫu giày thể thao mang phong cách retro, kết hợp hoàn hảo giữa thiết kế cổ điển và công nghệ hiện đại. Được ra mắt với tông màu chủ đạo là xanh dương (Blue) cùng các chi tiết đen và trắng, đôi giày này mang lại vẻ ngoài nổi bật, thu hút. Phần thân giày được làm từ chất liệu vải lưới cao cấp kết hợp với da tổng hợp, tạo sự thoáng khí và thoải mái khi mang. Công nghệ đệm Cell đặc trưng của Puma giúp tăng cường độ êm ái và hỗ trợ tốt cho bàn chân trong mỗi bước đi, mang lại cảm giác êm ái và linh hoạt. Đôi giày này phù hợp cho các hoạt động hàng ngày cũng như các buổi dạo phố, giúp người mang tự tin thể hiện phong cách cá tính.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'jyzrue.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (26, N'Giày Puma Clyde Leather Foil White 364669-01', CAST(1700000.00 AS Decimal(18, 2)), N'Giày Puma Clyde Leather Foil White 364669-01 đạt điểm 9/10. Đây là mẫu giày thể thao mang phong cách cổ điển, kết hợp giữa sự tiện dụng và vẻ ngoài sang trọng, phù hợp cho nhiều dịp sử dụng.Khi mang giày, người dùng sẽ cảm nhận được sự thoải mái và chắc chắn. Đế giày được thiết kế với độ bám tốt, giúp bạn tự tin di chuyển trên nhiều loại bề mặt, từ đường phố đến sân chơi.Về thiết kế, Puma Clyde Leather Foil White 364669-01 nổi bật với màu trắng tinh khiết và chất liệu da cao cấp, tạo nên vẻ ngoài thanh lịch và dễ dàng phối hợp với nhiều trang phục khác nhau, từ thể thao đến thời trang hàng ngày.Chất liệu da của giày được chọn lọc kỹ lưỡng, đảm bảo độ bền cao và giữ được form dáng sau thời gian dài sử dụng. Điều này làm tăng giá trị của sản phẩm, đặc biệt với những ai yêu thích sự kết hợp giữa phong cách và chất lượng.Tổng kết, Puma Clyde Leather Foil White 364669-01 là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N's3a5o4.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (27, N'Giày Puma Clyde Muse ''Ocean Drive''', CAST(850000.00 AS Decimal(18, 2)), N'Giày Puma Clyde Muse ''Ocean Drive'' là sự kết hợp hoàn hảo giữa phong cách cổ điển và nét hiện đại, lấy cảm hứng từ không khí năng động của những bãi biển và con đường ven biển Miami. Thiết kế nổi bật với tông màu tươi mát, chủ đạo là xanh biển và trắng, cùng với các điểm nhấn màu sắc rực rỡ, gợi lên cảm giác phóng khoáng, trẻ trung. Phần thân giày được làm từ chất liệu vải lưới và da tổng hợp cao cấp, mang đến độ thoáng khí và cảm giác nhẹ nhàng khi mang.Đặc biệt, phần dây đan và chi tiết đan chéo phía trên tạo nên sự chắc chắn, đồng thời giúp đôi giày ôm sát bàn chân, tạo cảm giác thoải mái trong suốt cả ngày. Đế giữa êm ái và công nghệ đệm hỗ trợ di chuyển linh hoạt, mang lại trải nghiệm đi lại thoải mái, trong khi đế ngoài cao su bền bỉ giúp tăng độ bám và ổn định trên mọi bề mặt. Puma Clyde Muse ''Ocean Drive'' không chỉ là một đôi giày thể thao mà còn là phụ kiện thời trang lý tưởng cho những ai muốn nổi bật với phong cách trẻ trung, năng động và thời thượng.', 5, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'a2d13a.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (28, N'Giày Puma Clyde Muse Satin EP Red', CAST(500000.00 AS Decimal(18, 2)), N'Giày Puma Clyde Muse Satin EP Red là sự kết hợp tinh tế giữa nét cổ điển và hiện đại, mang đến vẻ ngoài nữ tính và sang trọng. Đôi giày nổi bật với tông màu đỏ chủ đạo cùng chất liệu satin bóng bẩy, tạo nên một diện mạo thời thượng và đẳng cấp. Thiết kế thân giày ôm sát bàn chân giúp tạo cảm giác thoải mái, đồng thời tôn lên dáng vẻ mềm mại và linh hoạt. Phần dây đan chéo độc đáo trên thân giày là điểm nhấn, mang lại sự cá tính và khác biệt. Đế giữa được trang bị công nghệ đệm êm ái, đảm bảo hỗ trợ tốt cho đôi chân trong mọi hoạt động. Đế ngoài làm từ cao su bền bỉ, tăng cường độ bám và sự ổn định trên nhiều bề mặt. Puma Clyde Muse Satin EP Red là lựa chọn lý tưởng cho những ai yêu thích sự tinh tế, nhẹ nhàng nhưng vẫn muốn khẳng định phong cách riêng biệt của mình.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'tozdhd.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (29, N'Giày Puma RS X Jr ''Bold Fluorescent''', CAST(850000.00 AS Decimal(18, 2)), N'Giày Puma RS X Jr ''Bold Fluorescent'' là mẫu giày thể thao mang đậm phong cách trẻ trung và cá tính, nổi bật với thiết kế hiện đại và màu sắc nổi bật. Với tông màu chủ đạo là các gam màu neon rực rỡ, như xanh lá, cam, hồng, kết hợp cùng những đường nét đen trắng tương phản, đôi giày này thực sự thu hút mọi ánh nhìn.Phần thân giày được làm từ chất liệu vải lưới kết hợp với da tổng hợp, mang lại độ thoáng khí và bền bỉ. Công nghệ RS (Running System) đặc trưng của Puma được tích hợp trong phần đế giữa, giúp cung cấp độ êm ái và khả năng giảm chấn tốt, hỗ trợ tối đa cho mỗi bước chạy hay di chuyển hàng ngày. Đế ngoài bằng cao su với các chi tiết chống trượt giúp tăng cường độ bám trên nhiều loại bề mặt, mang lại cảm giác an toàn và ổn định.Với thiết kế năng động, Puma RS X Jr ''Bold Fluorescent'' là sự lựa chọn lý tưởng cho những bạn trẻ yêu thích sự nổi bật và phong cách đường phố, phù hợp để diện trong các hoạt động thường ngày hoặc tạo điểm nhấn cá tính trong phong cách thời trang.', 5, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'xixzbm.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (30, N'Giày Puma Serve Pro Lite White Red 374902-16', CAST(1500000.00 AS Decimal(18, 2)), N'Giày Puma Serve Pro Lite White Red 374902-16 xứng đáng với điểm 9/10. Đây là mẫu giày thể thao kết hợp giữa thiết kế nhẹ nhàng và màu sắc nổi bật, mang lại phong cách trẻ trung và năng động cho người sử dụng.Khi mang giày, cảm giác thoải mái và nhẹ nhàng là điều dễ nhận thấy. Đế giày được thiết kế với độ bám tốt, giúp bạn di chuyển tự tin trên nhiều loại bề mặt, từ đường phố đến sân tập.Về thiết kế, Puma Serve Pro Lite White Red 374902-16 nổi bật với sự phối hợp giữa màu trắng và đỏ, tạo nên vẻ ngoài cuốn hút và năng động. Màu sắc này dễ dàng phối hợp với nhiều trang phục khác nhau, từ thể thao đến trang phục hàng ngày.Chất liệu của giày được chọn lọc kỹ lưỡng, đảm bảo độ bền cao và giữ được form dáng sau thời gian dài sử dụng. Điều này làm tăng giá trị của sản phẩm, đặc biệt với những ai yêu thích sự kết hợp giữa phong cách và chất lượng.Tổng kết, Puma Serve Pro Lite White Red 374902-16 là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'151554.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (31, N'Giày Puma Serve Pro White 383757-01', CAST(1500000.00 AS Decimal(18, 2)), N'Giày Puma Serve Pro White 383757-01 xứng đáng với điểm 9/10. Đây là mẫu giày thể thao kết hợp giữa thiết kế cổ điển và sự tiện dụng, mang lại phong cách thanh lịch và hiện đại cho người sử dụng.Khi mang giày, cảm giác thoải mái và nhẹ nhàng là điều dễ nhận thấy. Đế giày được thiết kế với độ bám tốt, giúp bạn tự tin di chuyển trên nhiều loại bề mặt, từ đường phố đến sân tập.Về thiết kế, Puma Serve Pro White 383757-01 nổi bật với màu trắng tinh khiết, tạo nên vẻ ngoài thanh lịch và dễ dàng phối hợp với nhiều trang phục khác nhau, từ thể thao đến trang phục hàng ngày.Chất liệu của giày được chọn lọc kỹ lưỡng, đảm bảo độ bền cao và giữ được form dáng sau thời gian dài sử dụng. Điều này làm tăng giá trị của sản phẩm, đặc biệt với những ai tìm kiếm sự kết hợp giữa phong cách và chất lượng.Tổng kết, Puma Serve Pro White 383757-01 là một sự lựa chọn lý tưởng cho những ai muốn sở hữu một đôi giày thể thao vừa thời trang vừa bền bỉ. Đây là một khoản đầu tư xứng đáng cho tủ giày của bạn.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'qatnq4.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (32, N'Giày thể thao adidas Galaxy 6 Grey GW4133 ', CAST(1700000.00 AS Decimal(18, 2)), N'Giày Adidas Galaxy 6 Grey GW4133 là một đôi giày chạy bộ được thiết kế cho những người chạy bộ có bàn chân trung bình đến rộng. Đôi giày có phần trên bằng lưới giúp thoáng khí và phần đế giữa bằng Cloudfoam mang lại sự thoải mái và đệm.Adidas Galaxy 6 Grey GW4133 có phối màu xám, trắng và xanh dương, tạo nên một vẻ ngoài thanh lịch và hiện đại. Đôi giày có thiết kế cổ thấp, giúp bạn dễ dàng di chuyển và linh hoạt hơn.Adidas Galaxy 6 Grey GW4133 là một đôi giày phù hợp cho cả nam và nữ. Đôi giày có thể được phối với nhiều trang phục khác nhau, từ quần jeans đến quần short.Nếu bạn đang tìm kiếm một đôi giày chạy bộ thoải mái và thời trang, Adidas Galaxy 6 Grey GW4133 là một lựa chọn tuyệt vời. Đôi giày có thiết kế đẹp mắt, chất liệu cao cấp và giá cả phải chăng.', 15, 0, CAST(0.00 AS Decimal(3, 2)), 0, 2, CAST(N'2025-03-19' AS Date), N'wjua4b.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (33, N'Giày thể thao adidas Supernova + Black GX2905', CAST(3500000.00 AS Decimal(18, 2)), N'Giày Adidas Supernova + Black GX2905 là một đôi giày thể thao chạy bộ được thiết kế để mang lại sự thoải mái và năng lượng tối đa cho người dùng. Đôi giày được trang bị công nghệ Boost, một loại vật liệu đàn hồi cao cấp giúp hấp thụ lực tác động và trả lại năng lượng cho người dùng.Adidas Supernova + Black GX2905 có thiết kế tối giản và hiện đại, với phối màu đen chủ đạo. Đôi giày có phần trên được làm từ lưới dệt thoáng khí, giúp chân luôn khô thoáng và thoải mái. Phần đế ngoài được làm từ cao su bền bỉ, giúp tăng độ bám và hạn chế trơn trượt.Adidas Supernova + Black GX2905 là một đôi giày phù hợp cho tất cả mọi người, từ người mới bắt đầu chạy bộ đến những người chạy bộ chuyên nghiệp. Đôi giày có thể được sử dụng cho nhiều mục đích khác nhau, từ chạy bộ đường trường đến chạy bộ trong phòng tập.Nếu bạn đang tìm kiếm một đôi giày thể thao chạy bộ thoải mái, năng lượng và thời trang, Adidas Supernova + Black GX2905 là một lựa chọn tuyệt vời. Đôi giày có thiết kế đẹp mắt, chất liệu cao cấp và giá cả phải chăng.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 2, CAST(N'2025-03-19' AS Date), N'f6563649-1cdf-4f98-8204-d262c0922f33.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (34, N'Giày Thể Thao Nam Adidas Questar White GZ0630', CAST(2200000.00 AS Decimal(18, 2)), N'Giày Adidas Questar White GZ0630 là một đôi giày thể thao dành cho nam giới được thiết kế để mang lại sự thoải mái và hỗ trợ tối đa cho người đi. Đôi giày được làm từ da tổng hợp với phần đế ngoài bằng cao su. Questar White GZ0630 có thiết kế cổ thấp, giúp bạn dễ dàng di chuyển và linh hoạt hơn.Questar White GZ0630 là một đôi giày thời trang và năng động. Đôi giày có thể được phối với nhiều trang phục khác nhau, từ quần jeans đến quần short. Questar White GZ0630 là một đôi giày phù hợp cho cả nam và nữ.Nếu bạn đang tìm kiếm một đôi giày thể thao thời trang và năng động, Adidas Questar White GZ0630 là một lựa chọn tuyệt vời. Đôi giày có thiết kế đẹp mắt, chất liệu cao cấp và giá cả phải chăng.Ngoài ra, Adidas Questar White GZ0630 còn có một điểm nhấn đặc biệt đó là phần đế giữa được làm bằng công nghệ Bounce, mang lại sự thoải mái và hỗ trợ tối đa cho người đi. Đây là một đôi giày dành cho những ai yêu thích sự thời trang và hiệu suất cao.', 25, 0, CAST(0.00 AS Decimal(3, 2)), 0, 2, CAST(N'2025-03-19' AS Date), N'gi15bv.jpg')
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Description], [Discount], [ViewCount], [AverageRating], [TotalSold], [Category_Id], [Created_Date], [Image_Url]) VALUES (35, N'Giày thể thao Puma Rs-0 Red ', CAST(8500000.00 AS Decimal(18, 2)), N'Giày Puma RS-0 Red là phiên bản giày thể thao đậm chất hiện đại, nổi bật với màu đỏ chủ đạo mang đến vẻ cá tính và năng động. Được thiết kế dựa trên cảm hứng từ dòng RS (Running System) của Puma, đôi giày này kế thừa và phát triển công nghệ đệm RS, mang đến sự êm ái, thoải mái cho từng bước di chuyển. Phần thân giày sử dụng chất liệu vải lưới thoáng khí kết hợp với da tổng hợp, giúp giữ cho đôi chân luôn khô thoáng và vừa vặn. Đế ngoài bằng cao su bền bỉ cùng các đường rãnh thiết kế giúp tăng độ bám trên nhiều bề mặt khác nhau. Với phong cách trẻ trung, năng động, đôi giày Puma RS-0 Red là sự lựa chọn hoàn hảo cho những ai yêu thích sự nổi bật, sành điệu và phong cách thể thao.', 0, 0, CAST(0.00 AS Decimal(3, 2)), 0, 6, CAST(N'2025-03-19' AS Date), N'cfbqdy.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSize] ON 

INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (1, 1, N'39', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (2, 1, N'40', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (3, 1, N'41', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (4, 2, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (5, 2, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (6, 2, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (7, 3, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (8, 3, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (9, 3, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (10, 4, N'39', 10, CAST(6500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (11, 4, N'40', 10, CAST(6500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (12, 4, N'41', 10, CAST(6500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (13, 5, N'39', 10, CAST(4900000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (14, 5, N'40', 10, CAST(4900000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (15, 5, N'41', 10, CAST(4900000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (16, 6, N'39', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (17, 6, N'40', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (18, 6, N'41', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (19, 7, N'39', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (20, 7, N'40', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (21, 7, N'41', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (22, 8, N'39', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (23, 8, N'40', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (24, 8, N'41', 10, CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (25, 9, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (26, 9, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (27, 9, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (28, 10, N'39', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (29, 10, N'40', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (30, 10, N'41', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (31, 11, N'39', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (32, 11, N'40', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (33, 11, N'41', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (34, 12, N'39', 10, CAST(3500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (35, 12, N'40', 10, CAST(3500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (36, 12, N'41', 10, CAST(3500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (37, 13, N'39', 10, CAST(5500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (38, 13, N'40', 10, CAST(5500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (39, 13, N'41', 10, CAST(5500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (40, 14, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (41, 14, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (42, 14, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (43, 15, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (44, 15, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (45, 15, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (46, 16, N'39', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (47, 16, N'40', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (48, 16, N'41', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (49, 17, N'39', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (50, 17, N'40', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (51, 17, N'41', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (52, 18, N'39', 10, CAST(2400000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (53, 18, N'40', 10, CAST(2400000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (54, 18, N'41', 10, CAST(2400000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (55, 19, N'39', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (56, 19, N'40', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (57, 19, N'41', 10, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (58, 20, N'39', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (59, 20, N'40', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (60, 20, N'41', 10, CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (61, 21, N'39', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (62, 21, N'40', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (63, 21, N'41', 10, CAST(2300000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (64, 22, N'39', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (65, 22, N'40', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (66, 22, N'41', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (67, 23, N'39', 10, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (68, 23, N'40', 10, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (69, 23, N'41', 10, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (70, 24, N'39', 10, CAST(8500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (71, 24, N'40', 10, CAST(8500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (72, 24, N'41', 10, CAST(8500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (73, 25, N'39', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (74, 25, N'40', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (75, 25, N'41', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (76, 26, N'39', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (77, 26, N'40', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (78, 26, N'41', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (79, 27, N'39', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (80, 27, N'40', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (81, 27, N'41', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (82, 28, N'39', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (83, 28, N'40', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (84, 28, N'41', 10, CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (85, 29, N'39', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (86, 29, N'40', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (87, 29, N'41', 10, CAST(850000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (88, 30, N'39', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (89, 30, N'40', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (90, 30, N'41', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (91, 31, N'39', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (92, 31, N'40', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (93, 31, N'41', 10, CAST(1500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (94, 32, N'39', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (95, 32, N'40', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (96, 32, N'41', 10, CAST(1700000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (97, 33, N'39', 10, CAST(3500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (98, 33, N'40', 10, CAST(3500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (99, 33, N'41', 10, CAST(3500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (100, 34, N'39', 10, CAST(2200000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (101, 34, N'40', 10, CAST(2200000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (102, 34, N'41', 10, CAST(2200000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (103, 35, N'39', 10, CAST(8500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (104, 35, N'40', 10, CAST(8500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductSize] ([ProductSize_ID], [Product_ID], [Size], [Quantity], [Price_AtTime]) VALUES (105, 35, N'41', 10, CAST(8500000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductSize] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_ID], [User_Name], [Password], [Email], [Full_Name], [Role], [Created_Date], [PhoneNumber], [Address], [ImageUrl], [Gender], [DateOfBirth]) VALUES (1, N'koko', N'12345t', N'lngoctrieu203@gmail.com', N'Lâm Ngọc Triệu', NULL, CAST(N'2025-04-14' AS Date), N'0398450834', N'số 332, hẻm 114, đường kiên thị nhẫn, phường 7, thành phố trà vinh', NULL, NULL, NULL)
INSERT [dbo].[Users] ([User_ID], [User_Name], [Password], [Email], [Full_Name], [Role], [Created_Date], [PhoneNumber], [Address], [ImageUrl], [Gender], [DateOfBirth]) VALUES (2, N'trieulam', N'12345t', N'trieulop9320172018@gmail.com', N'Lâm Ngọc Triệu', NULL, CAST(N'2025-04-15' AS Date), N'0325712343', N'số 332, hẻm 114, đường kiên thị nhẫn, phường 7, thành phố trà vinh', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ChatHistory] ADD  DEFAULT (getdate()) FOR [SentAt]
GO
ALTER TABLE [dbo].[EmailConfirmations] ADD  DEFAULT ((0)) FOR [Is_Used]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Is_Confirmed]
GO
ALTER TABLE [dbo].[OtpConfirmations] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[OtpConfirmations] ADD  DEFAULT ((0)) FOR [Is_Used]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.00)) FOR [AverageRating]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [TotalSold]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD FOREIGN KEY([Cart_ID])
REFERENCES [dbo].[Carts] ([Cart_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChatHistory]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailConfirmations]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MailConfirmations]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([Order_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([Order_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Category_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
