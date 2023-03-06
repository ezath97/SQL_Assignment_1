show databases;

use sales_office;

show tables;

select * from salespeople;
select * from customers;
select * from orders;


Select count(*) as Begin_with_A from salespeople where Sname LIKE 'A%';


select Sname from salespeople where Snum in (select Snum from orders where amt > 2000);
 
 
select count(*) as BelongsTo_Newyork from salespeople where city='Newyork';
 
 
select City,count(*) from salespeople group by City Having city='London'or city='Paris';
  
  
SELECT p.Sname,count(*)as No_Orders FROM orders o, salespeople p WHERE p.Snum=o.Snum GROUP BY p.Sname;
SELECT p.Sname,o.odate as Date_of_Orders FROM orders o, salespeople p WHERE p.Snum=o.Snum;
 
 




