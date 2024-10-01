select * from sales
select * from customer 
select * from product
--Max
select ship_mode , max(profit) 
from sales
group by ship_mode

--MIN
select sales , min(profit) 
from sales
group by sales

--Like
select product_id
from sales
where product_id like 'OFF%'

--IN
select  c.state
from customer as c
where c.region in('Central' , 'South')


--Count
select ship_mode , count(quantity)
from sales
group by ship_mode

--AND
select *  
from sales 
where sales > 440 and ship_mode = 'Same Day'

select * 
from customer
where age > 30 or region = 'Central'

--SUM
select ship_mode , sum(sales)
from sales
group by ship_mode