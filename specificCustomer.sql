
delimiter //

create procedure getOrderByUser(
IN cust_no INT,
OUT shipped INT
-- OUT cancelled INT,
-- OUT cancelled INT,
-- OUT resolved INT
)

begin

select count(*) as shipped from orders where customerNumber=cust_no AND status="Shipped";

end //

delimiter ;

call getOrderByUser(141,@shipped);
-- select @shipped; 



