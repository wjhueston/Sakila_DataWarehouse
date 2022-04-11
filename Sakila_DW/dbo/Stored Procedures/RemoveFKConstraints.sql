CREATE procedure [dbo].[RemoveFKConstraints] as begin


ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.UnitLanguageKey]

ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.LanguageOfOriginKey]



ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.CustomerKey]




ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.StaffKey]



ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.StoreKey]


ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.FilmKey]


ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.CategoryKey]

ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.RentalDateKey]

ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.ReturnDateKey]

ALTER TABLE [dbo].[FactRental] DROP CONSTRAINT [FK_FactRental.CustomerHistoryKey]


end