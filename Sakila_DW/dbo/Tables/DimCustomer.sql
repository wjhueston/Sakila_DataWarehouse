CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]    INT           IDENTITY (1, 1) NOT NULL,
    [Customer_id]    SMALLINT      NULL,
    [FirstName]      VARCHAR (100) NULL,
    [LastName]       VARCHAR (100) NULL,
    [EmailAddress]   VARCHAR (100) NULL,
    [IsActive]       BIT           NULL,
    [AddressLineOne] VARCHAR (MAX) NULL,
    [AddressLineTwo] VARCHAR (100) NULL,
    [District]       VARCHAR (100) NULL,
    [City]           VARCHAR (100) NULL,
    [PostalCode]     VARCHAR (20)  NULL,
    [Country]        VARCHAR (100) NULL,
    CONSTRAINT [PK__DimCusto__95011E64ED13DEA6] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);

