select * from customer

----Regex Example--

-- 1)  first M digit, last 2 digit 4 or 5 or 6 or 7 
FM-14290
	
select * from customer where customer_id ~* '^M[a-z]-[0-9]{3}(4|5|6|7){2}$'

---2) 2 and 3 digit should be between a to f
--- 4th -
--- 5th digit F or U 
---  -
--- after anything
FUR-BO-10001798
	
select product_id from product 

select product_id from product where product_id ~* '^[a-z][a-f]{2}-(F|U)[a-z]-[0-9]{8}$'

---3) 2 and 3 digit should be a to g
---5th -
---6th digit A or R

select product_id from product where product_id ~* '^[a-z][a-g]{2}-(A|R)[a-z]-[0-9]{8}$'

---4)first A digit, last 2 digit 1 or 2 or 3 or 5 

select * from customer where customer_id ~* '^A[a-z]-[0-9]{3}(1|2|3|4|5){2}$'

---5) start with R end with a to z
--    8 times
Houston

select city from customer
	
select city from customer where city ~* '^R[a-z]{7}$'

---6) start with N end with a to z
--    5 times
Texas
select state from customer

select state from customer where state ~* '^N[a-z]{5}$'


