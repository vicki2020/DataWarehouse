/* victoria ivanova ch26 cs2 q1*/
/* SUM(IF(DATEPART(dw, orderdate) = '14', quantity, 0)) AS 14 */
select customerstate, sum(iif(datepart(ww, orderdate) = 14, quantity*unitprice, null)) as '14',
sum(iif(datepart(ww, orderdate) = 15, quantity*unitprice, null)) as '15', 
sum(iif(datepart(ww, orderdate) = 16, quantity*unitprice, null)) as '16', 
sum(iif(datepart(ww, orderdate) = 17, quantity*unitprice, null)) as '17', 
sum(iif(datepart(ww, orderdate) = 18, quantity*unitprice, null)) as '18'
from tble_dates
where year(orderdate)=2014 and datepart(m,[orderdate])=4
group by customerstate
order by customerstate




