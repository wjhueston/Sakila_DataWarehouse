Create Procedure PopulateDimCustomerHistory
As
Begin
 
Insert into DimCustomerHistory
Select 
src.ODS_customer_id
,src.address
,src.address2
,src.district
,src.City
,src.postal_code
,src.Country
, Cast(GetDate() as Date) as StartDate
, '12/31/9999' as EndDate
, 1 as IsActive
From Sakila_ODS_WH.dbo.customer as src
left join DimCustomerHistory as tgt
on src.ODS_customer_id = tgt.Customer_id
where tgt.Customer_id is null


Update DimCustomerHistory  
Set EndDate = Cast(getDate() as Date),
IsActive = 0
From Sakila_ODS_WH.dbo.customer as src
join DimCustomerHistory as tgt
on src.ODS_customer_id = tgt.Customer_id
Where tgt.EndDate = '12/31/9999' 
and not (
src.address = tgt.HistoricalAddressLineOne
and src.address2 = tgt.HistoricalAddressLineTwo
and src.district = tgt.HistoricalDistrict
and src.City = tgt.HistoricalCity
and src.postal_code = tgt.HistoricalPostalCode
and src.Country = tgt.HistoricalCountry )

Insert into DimCustomerHistory
Select 
src.ODS_customer_id
,src.address
,src.address2
,src.district
,src.City
,src.postal_code
,src.Country
, Cast(GetDate() as Date) as StartDate
, '12/31/9999' as EndDate
, 1 as IsActive
From Sakila_ODS_WH.dbo.customer as src
join DimCustomerHistory as tgt
on src.ODS_customer_id = tgt.Customer_id
Where not (src.address = tgt.HistoricalAddressLineOne
and src.address2 = tgt.HistoricalAddressLineTwo
and src.district = tgt.HistoricalDistrict
and src.City = tgt.HistoricalCity
and src.postal_code = tgt.HistoricalPostalCode
and src.Country = tgt.HistoricalCountry )
End