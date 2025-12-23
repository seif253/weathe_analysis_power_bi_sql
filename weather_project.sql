USE [power_bi]
GO

/****** Object:  View [dbo].[power_bi_project]    Script Date: 10/19/2025 5:06:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view dbo.power_bi_project as (
select
sales_usd,
order_date,
day_name,
shop_name,
customers,
pct_male,
pct_female,
pct_family,
pct_single,
male_number,
female_number,
single_number,
families_number,
avg_temp_f as temprature,
case when is_rain=0 then 'false'
	 when is_rain=1 then 'true'
end 'rains',

case when day_name in ('Friday','Saturday') then 'weekend'
else 'weekdays'
end is_weekend

from dbo.power_bi_reference)
GO


