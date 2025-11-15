select * from album ;

-- Q1: Who is the senior most employee based on job title?
select * from employee 
order by levels DESC
limit 1 ;

-- Q2: Which countries have the most Invoices? 
select count(*) as sum, billing_country
from invoice
GROUP BY billing_country
order  by sum desc 
;

-- Q3: What are top 3 values of total invoice? 
select total from invoice 
order  by total desc
limit 3 ;

--Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */

SELECT billing_city,SUM(total) AS InvoiceTotal
FROM invoice
GROUP BY billing_city
ORDER BY InvoiceTotal DESC
LIMIT 1;

---Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money
select customer.customer_id  , customer.last_name , customer.first_name , sum(invoice.total) as total
from customer
join invoice on customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id 
order by total desc
limit 1 ;
select * from invoice 


