CREATE TABLE [dbo].[DimStaff] (
    [StaffKey]     INT             IDENTITY (1, 1) NOT NULL,
    [Staff_id]     TINYINT         NULL,
    [FirstName]    VARCHAR (100)   NULL,
    [LastName]     VARCHAR (100)   NULL,
    [StaffPicture] VARBINARY (MAX) NULL,
    [EmailAddress] VARCHAR (50)    NULL,
    CONSTRAINT [PK__DimStaff__37D30BF4928225BF] PRIMARY KEY CLUSTERED ([StaffKey] ASC)
);

