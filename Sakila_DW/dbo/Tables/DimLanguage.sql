CREATE TABLE [dbo].[DimLanguage] (
    [LanguageKey]  INT           IDENTITY (1, 1) NOT NULL,
    [Language_id]  TINYINT       NULL,
    [LanguageName] VARCHAR (100) NULL,
    CONSTRAINT [PK__DimLangu__AEBE4334E11992B2] PRIMARY KEY CLUSTERED ([LanguageKey] ASC)
);

