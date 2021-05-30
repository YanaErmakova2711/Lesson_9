--task1  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/the-report/problem


select  Name, case
        when flag >7 then Name
        
        else Null
        end Name_2,

flag as Grade, Marks from 

(
select * , case
when Marks > 0 and Marks <9  then 1
when Marks > 10 and Marks<19  then 2
when Marks > 20 and Marks<29  then 3
when Marks > 30 and Marks<39  then 4
when Marks > 40 and Marks<49  then 5
when Marks > 50 and Marks<59  then 6
when Marks > 60 and Marks<69  then 7
when Marks > 70 and Marks<79  then 8
when Marks > 80 and Marks<89  then 9
when Marks > 90 and Marks<100  then 10
else 0
end flag
from df_Students
) as res

where Grade in (10,9,8)

union all

select  Name, case
        when flag >7 then Name
        
        else Null
        end Name_2,

flag as Grade, Marks from 

(
select * , case
when Marks > 0 and Marks <9  then 1
when Marks > 10 and Marks<19  then 2
when Marks > 20 and Marks<29  then 3
when Marks > 30 and Marks<39  then 4
when Marks > 40 and Marks<49  then 5
when Marks > 50 and Marks<59  then 6
when Marks > 60 and Marks<69  then 7
when Marks > 70 and Marks<79  then 8
when Marks > 80 and Marks<89  then 9
when Marks > 90 and Marks<100  then 10
else 0
end flag
from df_Students
) as res1

where Grade in (7,6)
ORDER BY   Grade desc,  Name_2, Marks 





--task2  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/occupations/problem
SELECT* FROM
(          
SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Doctor'
) AS DOC
 FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Professor') AS PROF

ON DOC.nd=PROF.nd

FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Singer') AS Sing

ON PROF.nd=Sing.nd

FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Actor') AS Act

ON Sing.nd=Act.nd


--task3  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT distinct (CITY)  from STATION
WHERE CITY  Not like 'A%' and CITY Not like 'E%' and CITY Not like 'I%' and
CITY Not like 'O%' and CITY not like 'U%'

--task4  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT distinct(CITY) from STATION
WHERE 
CITY  Not like '%a' and CITY  Not like '%e' and CITY  Not like '%i' and
CITY  Not like '%o' and CITY  not like '%u'

--task5  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
SELECT distinct(CITY) from STATION
WHERE 
CITY  Not like 'A%' and CITY Not like 'E%' and CITY Not like 'I%' and
CITY Not like 'O%' and CITY not like 'U%' 
or
CITY  Not like '%a' and CITY  Not like '%e' and CITY  Not like '%i' and
CITY  Not like '%o' and CITY  not like '%u'

--task6  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT distinct(CITY) from STATION
WHERE 
CITY  Not like 'A%' and CITY Not like 'E%' and CITY Not like 'I%' and
CITY Not like 'O%' and CITY not like 'U%' 
and
CITY  Not like '%a' and CITY  Not like '%e' and CITY  Not like '%i' and
CITY  Not like '%o' and CITY  not like '%u'


--task7  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/salary-of-employees/problem
SELECT name from Employee 
where salary>2000 and months<10
order by employee_id

--task8  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/the-report/problem
SELECT* FROM
(          
SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Doctor'
) AS DOC
 FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Professor') AS PROF

ON DOC.nd=PROF.nd

FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Singer') AS Sing

ON PROF.nd=Sing.nd

FULL OUTER JOIN 
(SELECT ROW_NUMBER() OVER(ORDER BY Name) AS nd,
Name
FROM OCCUPATIONS 
WHERE OCCUPATION= 'Actor') AS Act

ON Sing.nd=Act.nd

