CREATE TABLE [dbo].[DimDate] (
    [DateKey]     INT          NOT NULL,
    [Date]        DATE         NULL,
    [MonthNumber] TINYINT      NULL,
    [MonthName]   VARCHAR (9)  NULL,
    [DayOfMonth]  TINYINT      NULL,
    [WeekNumber]  TINYINT      NULL,
    [DayOfWeek]   VARCHAR (9)  NULL,
    [Quarter]     TINYINT      NULL,
    [Year]        NUMERIC (18) NULL,
    [DayOfYear]   SMALLINT     NULL,
    PRIMARY KEY CLUSTERED ([DateKey] ASC)
);

