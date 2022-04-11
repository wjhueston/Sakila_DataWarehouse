CREATE TABLE [dbo].[DimCustomerHistory] (
    [CustomerHistoryKey]       INT           IDENTITY (1, 1) NOT NULL,
    [Customer_id]              SMALLINT      NULL,
    [HistoricalAddressLineOne] VARCHAR (MAX) NULL,
    [HistoricalAddressLineTwo] VARCHAR (100) NULL,
    [HistoricalDistrict]       VARCHAR (100) NULL,
    [HistoricalCity]           VARCHAR (100) NULL,
    [HistoricalPostalCode]     VARCHAR (20)  NULL,
    [HistoricalCountry]        VARCHAR (100) NULL,
    [StartDate]                DATETIME      NULL,
    [EndDate]                  DATETIME      NULL,
    [IsActive]                 BIT           NULL,
    CONSTRAINT [PK__DimCusto__D0C75CCC8A375AA4] PRIMARY KEY CLUSTERED ([CustomerHistoryKey] ASC)
);

