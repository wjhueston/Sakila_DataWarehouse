--Save all foreign key constraint add scripts from factrental
CREATE procedure [dbo].[AddFKConstraints] as begin


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.UnitLanguageKey] FOREIGN KEY([UnitLanguageKey])
REFERENCES [dbo].[DimLanguage] ([LanguageKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.UnitLanguageKey]




ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.LanguageOfOriginKey] FOREIGN KEY([LanguageOfOriginKey])
REFERENCES [dbo].[DimLanguage] ([LanguageKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.LanguageOfOriginKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.CustomerKey] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.CustomerKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.StaffKey] FOREIGN KEY([StaffKey])
REFERENCES [dbo].[DimStaff] ([StaffKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.StaffKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.StoreKey] FOREIGN KEY([StoreKey])
REFERENCES [dbo].[DimStore] ([StoreKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.StoreKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.FilmKey] FOREIGN KEY([FilmKey])
REFERENCES [dbo].[DimFilm] ([FilmKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.FilmKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.CategoryKey] FOREIGN KEY([CategoryKey])
REFERENCES [dbo].[DimCategory] ([CategoryKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.CategoryKey]


ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.RentalDateKey] FOREIGN KEY([RentalDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.RentalDateKey]

ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.ReturnDateKey] FOREIGN KEY([ReturnDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.ReturnDateKey]

ALTER TABLE [dbo].[FactRental]  WITH CHECK ADD  CONSTRAINT [FK_FactRental.CustomerHistoryKey] FOREIGN KEY([CustomerHistoryKey])
REFERENCES [dbo].[DimCustomerHistory] ([CustomerHistoryKey])


ALTER TABLE [dbo].[FactRental] CHECK CONSTRAINT [FK_FactRental.CustomerHistoryKey]


end

