
select * from vehicle
select * from accident

--Q1.How many accidents have occurred in urban areas versus rural areas?
select area , count(*) from accident group by area; 

--Q2.Which day of the week has the highest number of accidents?
select top 1 day, count(accidentindex) as totalaccidents from accident 
group by day 
order by totalaccidents desc;

--Q3.What is the average age of vehicles involved in accidents based on their type?
select vehicletype , avg(agevehicle) as avage , count(accidentindex) as accidents from vehicle
where agevehicle is not null
group by vehicletype
order by accidents desc;

--Q4.Can we identify any trends in accidents based on the age of the vehicles involved?
select agegroup,count(accidentindex) as accidents, 
avg(agevehicle) as avage 
from(select accidentindex,agevehicle,
	case
		when agevehicle between 0 and 5 then 'NEW'
		when agevehicle between 5 and 10 then 'Regular'
		else 'Old'
	end as agegroup
from vehicle) as subquery
group by agegroup
order by avage desc;

--Q5.Are there any specific weather conditions that contribute to severe accidents?
select  weatherconditions , count(severity) as accidents  
from accident 
group by weatherconditions
order by accidents desc

--Q6.Do accidents often involve impacts on the left-hand side of vehicles?
select count(accidentindex) as accidents , lefthand 
from vehicle 
group by lefthand 
having lefthand is not null;

--Q7.Are there any relationships between journey purposes and the severity of accidents?
select V.JourneyPurpose , count(A.severity) as accidents,
case 
when count(A.severity) between 0 and 1000 then 'LOW'
when count(A.severity) between 1001 and 3000 then 'Moderate'
else 'HIGH'
end as 'level' 
from accident A join vehicle V on A.accidentindex = V.accidentindex
group by V.journeypurpose
order by accidents desc;

--Q8.Calculate the average age of vehicles involved in accidents, considering daylight and point of impact
select  avg(V.agevehicle) as avage , pointimpact , 
count(V.accidentindex) as accidents, A.LightConditions
from vehicle V
join accident A on V.accidentindex = A.accidentindex
group by pointimpact , lightconditions 
having LightConditions = 'Daylight';  

select * from vehicle
select * from accident

--Q9.How many accidents occurred at each speed limit categorized by severity level, and what is the distribution across different speed limits?
select count(accidentindex) as accidents,speedlimit,severity from accident 
group by speedlimit,severity
order by speedlimit desc;