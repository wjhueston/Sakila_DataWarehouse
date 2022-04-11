CREATE TABLE [dbo].[DimCategory] (
    [CategoryKey]  INT          IDENTITY (1, 1) NOT NULL,
    [Category_id]  TINYINT      NULL,
    [CategoryName] VARCHAR (25) NULL,
    CONSTRAINT [PK__DimCateg__76B0FE411A8B662F] PRIMARY KEY CLUSTERED ([CategoryKey] ASC)
);

