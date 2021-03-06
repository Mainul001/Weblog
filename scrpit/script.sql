CREATE TABLE [dbo].[t_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](300) NOT NULL,
	[body] [text] NOT NULL,
	[author] [varchar](200) NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_t_article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
