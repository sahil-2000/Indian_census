USE [portfolioProject];
-- getting data set order by state name
select * from [dbo].['Dataset1 (1)#xlsx - Data1$']
order by 2;
select * from [dbo].[Dataset2$]
order by 2;

--data set for rajasthan and haryana with sex ratio grater than 
select * from [dbo].['Dataset1 (1)#xlsx - Data1$']
where State in ('Haryana','Rajasthan') and Sex_Ratio >990
order by 2;

--State wise sex ratio
select State,AVG(Sex_ratio) as AVG_SEX_RATIO from [dbo].['Dataset1 (1)#xlsx - Data1$']
Group by State;

--state wise population
select State,sum(Population) as AVG_SEX_RATIO from [dbo].[Dataset2$]
Group by State;

--State wise sex_ratio and literacy rate(CORRELATION)
select AVG(Sex_ratio) as AVG_SEX_RATIO,AVG(literacy) as Avg_literacy_rate from [dbo].['Dataset1 (1)#xlsx - Data1$']
Group by State
order by 2 desc;

-- relation between growth rate and area of state
Select D1.State,Avg(D1.Growth) as Avg_growth,sum(D2.Area_km2) as total_area
FROM [dbo].['Dataset1 (1)#xlsx - Data1$'] D1
join [dbo].[Dataset2$] D2
on D1.State=D2.State
Group by D1.State
order by 3 desc;

