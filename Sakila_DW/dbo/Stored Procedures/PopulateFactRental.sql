CREATE procedure [dbo].[PopulateFactRental]
as
Begin

Insert into FactRental
Select r.ODS_rental_id,
isnull(Cast(Convert(varchar(8), r.rental_date, 112) as int),99991231) as RentalDateKey,
isnull(Cast(Convert(varchar(8), r.return_date, 112) as int),99991231) as ReturnDateKey,
DateDiff(Day, r.rental_date, r.return_date) as RentalDuration,
f.rental_duration as LoanPeriod,
f.rental_rate as RentalRate,
p.amount as PaymentAmount,
isnull(df.FilmKey, 0) as FilmKey,
isnull(dc.CustomerKey,0) as CustomerKey,
isnull(dch.CustomerHistoryKey,0) as CustomerHistoryKey,
isnull(ds.StaffKey,0) as StaffKey,
isnull(dul.LanguageKey,0) as UnitLanguageKey,
isnull(dol.LanguageKey,0) as LanguageOfOriginKey,
isnull(dcat.CategoryKey,0) as CategoryKey,
isnull(dstore.StoreKey,0) as StoreKey

From Sakila_ODS_WH.dbo.rental r
Join Sakila_ODS_WH.dbo.inventory i 
on i.ODS_inventory_id = r.ODS_inventory_id
Join Sakila_ODS_WH.dbo.film_category fc
on fc.ODS_film_id=i.ODS_film_id
Join Sakila_ODS_WH.dbo.film f
on f.ODS_film_id=i.ODS_film_id
Join Sakila_ODS_WH.dbo.payment p 
on p.ODS_rental_id=r.ODS_rental_id

left Join DimFilm df
on df.Film_id = i.ODS_film_id
left join DimCustomer dc 
on dc.Customer_id=r.ODS_customer_id
left join DimCustomerHistory dch
on r.ODS_customer_id = dch.Customer_id
left join DimStaff ds
on ds.Staff_id = r.ODS_staff_id
left join DimLanguage dul
on dul.Language_id=f.ODS_language_id
left join DimLanguage dol
on dol.Language_id=f.ODS_original_language_id
left join DimCategory dcat
on dcat.Category_id=fc.ODS_category_id
left join DimStore dstore
on dstore.Store_id=i.store_id

Left Join FactRental fr
on r.ODS_rental_id = fr.Rental_id
where fr.RentalKey is null


Update FactRental set
Rental_id=r.ODS_rental_id,
RentalDateKey = isnull(Cast(Convert(varchar(8), r.rental_date, 112) as int),99991231),
ReturnDateKey = isnull(Cast(Convert(varchar(8), r.return_date, 112) as int),99991231),
RentalDuration = isnull(DateDiff(Day, r.rental_date, r.return_date),0),
LoanPeriod=f.rental_duration,
RentalRate=f.rental_rate,
PaymentAmount = p.amount,
FilmKey = isnull(df.FilmKey, 0),
CustomerKey = isnull(dc.CustomerKey,0),
CustomerHistoryKey = isnull(dch.CustomerHistoryKey,0),
StaffKey = isnull(ds.StaffKey,0),
UnitLanguageKey = isnull(dul.LanguageKey,0),
LanguageOfOriginKey = isnull(dol.LanguageKey,0),
CategoryKey = isnull(dcat.CategoryKey,0),
StoreKey = isnull(dstore.StoreKey,0)

From Sakila_ODS_WH.dbo.rental r
Join Sakila_ODS_WH.dbo.inventory i 
on i.ODS_inventory_id = r.ODS_inventory_id
Join Sakila_ODS_WH.dbo.film_category fc
on fc.ODS_film_id=i.ODS_film_id
Join Sakila_ODS_WH.dbo.film f
on f.ODS_film_id=i.ODS_film_id
join Sakila_ODS_WH.dbo.payment p
on p.ODS_rental_id=r.ODS_rental_id

left Join DimFilm df
on df.Film_id = i.ODS_film_id
left join DimCustomer dc 
on dc.Customer_id=r.ODS_customer_id
left join DimCustomerHistory dch
on r.ODS_customer_id = dch.Customer_id
left join DimStaff ds
on ds.Staff_id = r.ODS_staff_id
left join DimLanguage dul
on dul.Language_id=f.ODS_language_id
left join DimLanguage dol
on dol.Language_id=f.ODS_original_language_id
left join DimCategory dcat
on dcat.Category_id=fc.ODS_category_id
left join DimStore dstore
on dstore.Store_id=i.store_id

Left Join FactRental fr
on r.ODS_rental_id = fr.Rental_id
where not (
fr.Rental_id=r.ODS_rental_id and
fr.RentalDateKey = isnull(Cast(Convert(varchar(8), r.rental_date, 112) as int),99991231) and
fr.ReturnDateKey = isnull(Cast(Convert(varchar(8), r.return_date, 112) as int),99991231) and
fr.RentalDuration = isnull(DateDiff(Day, r.rental_date, r.return_date),0) and
fr.LoanPeriod=f.rental_duration and
fr.RentalRate=f.rental_rate and
fr.PaymentAmount=p.amount and
fr.FilmKey = isnull(df.FilmKey, 0) and
fr.CustomerKey = isnull(dc.CustomerKey,0) and
fr.CustomerHistoryKey = isnull(dch.CustomerHistoryKey,0) and
fr.StaffKey = isnull(ds.StaffKey,0) and
fr.UnitLanguageKey = isnull(dul.LanguageKey,0) and
fr.LanguageOfOriginKey = isnull(dol.LanguageKey,0) and
fr.CategoryKey = isnull(dcat.CategoryKey,0) and
fr.StoreKey = isnull(dstore.StoreKey,0)
)
End

