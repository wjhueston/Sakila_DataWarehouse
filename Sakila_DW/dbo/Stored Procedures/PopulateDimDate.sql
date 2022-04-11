CREATE Procedure [dbo].[PopulateDimDate]
(@StartDate date, @EndDate date)
As
Begin
Declare @dt date = @startDate
While (@dt <= @EndDate)
Begin
Insert into DimDate
Select Cast(Convert(varchar(8), @dt, 112) as int) as DateKey,
@dt as [Date],
DatePart(Month, @dt) as MonthNumber,
DateName(Month, @dt) as MonthName,
DatePart(day, @dt) as DayOfMonth,
DatePart(week,@dt) as WeekNumber,
DateName(WEEKDAY, @dt) as DayOfWeek,
DatePart(QUARTER,@dt) as Quarter,
Year(@dt) as [Year],
DatePart(DayOfYear,@dt) as DayOfYear
Select @dt = dateAdd(day,1, @dt)
End

Declare @de date = '12/31/9999'
Insert into DimDate
Select Cast(Convert(varchar(8), @de, 112) as int) as DateKey,
@de as [Date],
DatePart(Month, @de) as MonthNumber,
DateName(Month, @de) as MonthName,
DatePart(day, @de) as DayOfMonth,
DatePart(week,@de) as WeekNumber,
DateName(WEEKDAY, @de) as DayOfWeek,
DatePart(QUARTER,@de) as Quarter,
Year(@de) as [Year],
DatePart(DayOfYear,@de) as DayOfYear

End