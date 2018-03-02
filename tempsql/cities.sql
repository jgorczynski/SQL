--Query the two cities in STATION with the shortest and longest CITY names, 
--as well as their respective lengths (i.e.: number of characters in the name). 
--If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select top 1 CITY, LEN(City) City_Length from STATION order by City_Length asc, City asc

select top 1 CITY, LEN(City) City_Length from STATION order by City_Length desc, City asc

--Query an alphabetically ordered list of all names in OCCUPATIONS, 
--immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses).

select Name + left(Occupation, 1) from OCCUPATIONS order by Name;

--Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
--There are a total of [occupation_count] [occupation]s.
--where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS
--and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

select "There are a total of ", count(OCCUPATION),
concat(lower(occupation),"s.") from OCCUPATIONS group by OCCUPATION order by
count(OCCUPATION), OCCUPATION asc;

--triangles
select case  
when A + B > C and A+C>B and B+C>A then case
when A = B and B = C then 'Equilateral' 
when A = B or B = C or A = C then 'Isosceles' 
when A != B or B != C or A != C then 'Scalene' end 
else 'Not A Triangle' end 
from TRIANGLES;


