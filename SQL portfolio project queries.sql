use SQL_FINAL_PORTFOLIO;

SELECT * from telco;

Select `Age`, `Gender`, `Contract`, avg(`Monthly Charge`) as avg_monthly_charge
from telco
where `Churn Label` = 'Yes'
group by `Age`, `Gender`, `Contract`
order by avg_monthly_charge DESC;



select * from telco;
-- WHAT ARE THE FEEDBACKS OR COMPLAINTS FROM THOSE CHURNED CUSTOMERS?
select `Churn Reason`, COUNT(*) as occurrences
from telco
where `Churn Label` = 'Yes'
group by `Churn Reason`
order by occurrences desc;

-- How does the payment method influence churn behavior?
select  `Payment Method`, COUNT(*) as churned_customers
from  telco
where `Churn Label` = 'Yes'
group by `Payment Method`
order by churned_customers DESC;

select * from telco;

-- city or age group with the most churned customers
select `City`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by `City`
order by churned_customers desc
limit 10;


-- Which age group has 

select case 
when `Age` between 18 and 24 then '18-24'
when `Age` between 25 and 34 then '25-34'
when `Age` between 35 and 44 then '35-44'
when `Age` between 45 and 54 then '45-54'
when `Age` between 55 and 64 then '55-64'
when `Age` between 65 and 75 then '65-75'
else '75+'
end as age_group,
count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by age_group
order by churned_customers desc;

-- How does gender affect the number of referrals

select * from telco;
Select `Gender`, avg(`Number of Referrals`) as avg_referrals
from telco
group by `Gender`;

-- How is tenure affected by age and gender

select `Gender`, `City`, avg(`Tenure in Months`) as avg_tenure
from telco
group by `Gender`, `City`
order by avg_tenure desc;

select * from telco;

-- How does monthly charge impact the number of churned customers
select `Monthly Charge`, count(*)  as  churned_customers
from telco
where `Churn Label` = 'Yes'
group by `Monthly Charge`
order by `churned_customers` desc;


-- payment method's impact on churn behavior 

select `Payment Method`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by `Payment Method`
order by churned_customers DESC;

-- lets do an analysis of how cusotmers in different cities are using different payment methods and its impact on churn
SELECT `Payment Method`, `City`, COUNT(*) AS churned_customers
FROM telco
WHERE `Churn Label` = "Yes"
GROUP BY `Payment Method`, `City`
ORDER BY churned_customers DESC;


SELECT `Payment Method`, `City`, COUNT(*) AS churned_customers
FROM telco
WHERE `Churn Label` = 'Yes' and `Payment Method` = 'Bank Withdrawal'
GROUP BY `Payment Method`, `City`
ORDER BY churned_customers DESC 
LIMIT 10;

-- churn behavior by age groups 
select * from telco;

select  case
when `Age` between 18 and 24 then '18-24'
when `Age` between 25 and 34 then '25-34'
when `Age` between 35 and 44 then '35-44'
when `Age` between 45 and 54 then '45-54'
when `Age` between 55 and 64 then '55-64'
when `Age` between 65 and 75 then '65-75'
else '75+'
end as age_group,
`Churn Reason`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by age_group, `Churn Reason`
order by churned_customers Desc;

-- which gender is more prone to committing churn?
select `Gender`, count(*) as churned_customers
from telco 
where `Churn Label` = 'Yes'
group by `Gender`;

-- let's do churn by streaming service and churn by contract type
select * from telco;

select `Contract`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by `Contract`
order by churned_customers;

select `Internet Type`, `Churn Reason`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by `Internet Type`, `Churn Reason`
order by churned_customers desc;

select * from telco;

select `Streaming TV`, `Streaming Movies`, `Streaming Music`, count(*) as churned_customers
from telco
where `Churn Label` = 'Yes'
group by `Streaming TV`, `Streaming Movies`, `Streaming Music`
order by churned_customers desc;

select `Churn Reason`, count(*) as churned_customers
from telco 
where `Churn Label` = 'yes'
group by `Churn Reason`
order by churned_customers desc;
