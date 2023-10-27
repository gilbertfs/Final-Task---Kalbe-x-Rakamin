--Rata umur cust dari Martial Status 
select "Marital Status" ,
	avg(age) as age_average
from kalbenutr.customer
group by "Marital Status";

--Rata umur cust jika dilihat dari Gender
select gender,
	avg(age) as age_gender
from kalbenutr.customer
group by gender ;

--Quantity terbanyak dari setiap Store
select StoreName,
	sum(Qty) as total
from kalbenutr.store s join kalbenutr."transaction" t
	on s.storeid = t.storeid
group by StoreName;

--Produk terlaris
select "Product Name",
	sum(totalamount) as total_amount
from kalbenutr.product p join kalbenutr."transaction" t
	on p.productid = t.productid 
group by "Product Name"
order by sum(totalamount) desc;