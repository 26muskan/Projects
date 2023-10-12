SELECT * FROM cars.car_dekho;
use cars;

-- read data --
select * from car_dekho;

-- count data --
select count(*) from car_dekho;

-- the manager asked the employee how many cars will be available in 2023?--
select count(*) car_dekho
where year = 2023;

-- manager asked the employee how many cars is available in 2020,2021,2022?--
select Name, year from car_dekho
where year between 2020 and 2022
order by year;

select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- client asked me to print the total of all cars by year. i don't see all the details --
select year, count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho
where fuel = 'Diesel' and year = 2020;

-- the manager told the employee to give print All the fuels cars ( petrol, diseal, and CNG) come by all year.--
select year ,count(*) from car_dekho
where fuel = ("Petrol")
group by year;

select year ,count(*) from car_dekho
where fuel = ("Diesel")
group by year;

select year ,count(*) from car_dekho
where fuel = ("Electric")
group by year;

-- manager said the that there were more than 100cars in a given year, which year had more than 100 cars?
Select year, count(*) from car_dekho
group by year having count(*) > 100;

--- the manager said to thr employee all the car count details between 2015 and 2023; we need a complete list---
 select count(*) from car_dekho where year between 2015 and 2023;

--- the manager said to the employee all the car  details between 2015 to 2023; we need a complete list---
select * from car_dekho where year between 2015 and 2023;

-- END --