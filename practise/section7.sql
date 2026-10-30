(
    select * from products  by price desc limit 4
)
UNION
(
    select * from products order by price/weight desc limit 4
)