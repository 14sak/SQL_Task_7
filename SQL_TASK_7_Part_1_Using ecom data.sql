--Task 7(Part_1)


-- 1) create a report of all state sales, quantity, discount , profit  with following aggregation ,
-- sum , avg, min , max, count	

--state,sales,quantity,discount,profit

select * from sales
select * from customer

select c.state,sum(s.sales) as"Sum_Sales",avg(s.sales) as "Avg_Sales",count(s.sales) as "Sales_Count", 
 sum(s.quantity)as"Sum_Quantity",min(s.discount) as"Min_Discount",max(s.discount)as"Max_Discount",profit
	from sales as s
	
inner join customer as c
on s.customer_id=c.customer_id
group by c.state ,s.profit
 


--2) get data of all state and city's avg customer age 		
--state,city ,age
--age average

select * from customer
select * from age_category
	
select c.state,c.city,avg(a.age) from customer as c
inner join age_category as a
on c.city=a.city
group by c.state,c.city 



-- 3) get data of 2017 to 2018  with product name and sales per quantity 	
--product name,sales ,quantity,order_date(2017 -2018)

select * from sales
select * from product
	
select s.order_date,sum(s.sales)/sum(s.quantity) as "Sales_per_Quantity", p.product_name from sales as s
inner join product as p
on s.product_id=p.product_id
where order_date between '01-01-2017' and '31-12-2018'
group by p.product_name,s.order_date