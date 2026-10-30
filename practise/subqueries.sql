select name, price from products where price > (select  max(price from products where department="toys"))

--CORRELATED SUBQUERIES

select name, price, department from products as p1 where p1.price> (select max(price) from products as p2 where p1.department=p2.department);