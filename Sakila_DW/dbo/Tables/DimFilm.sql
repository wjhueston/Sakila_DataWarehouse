CREATE TABLE [dbo].[DimFilm] (
    [FilmKey]           INT           IDENTITY (1, 1) NOT NULL,
    [Film_id]           SMALLINT      NULL,
    [Title]             VARCHAR (MAX) NULL,
    [FilmDescription]   VARCHAR (MAX) NULL,
    [YearOfRelease]     NUMERIC (18)  NULL,
    [Rating]            VARCHAR (5)   NULL,
    [SpecialFeatures]   VARCHAR (100) NULL,
    [RunTime]           SMALLINT      NULL,
    [CostOfReplacement] DECIMAL (18)  NULL,
    CONSTRAINT [PK__DimFilm__C59E569E02BC76A4] PRIMARY KEY CLUSTERED ([FilmKey] ASC)
);

