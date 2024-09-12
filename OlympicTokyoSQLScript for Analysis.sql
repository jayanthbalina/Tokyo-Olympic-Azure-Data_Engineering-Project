--1) count the number of atheletes from each country

select country,count(*) as TotalAtheletes
from athletes
group by Country
order by TotalAtheletes DESC

--2) calculate the total medals won by each country

select Teamcountry,
sum(Gold) as Total_Gold,
sum(silver) as Total_Silver,
sum(bronze) as Total_Bronze
from medals
group by TeamCountry

--3) calcualte the average number of entries by gender for each discipline

select Discipline,
avg(female)as Avg_Female,
Avg(male) as Avg_Male
from entriesgender
group by Discipline