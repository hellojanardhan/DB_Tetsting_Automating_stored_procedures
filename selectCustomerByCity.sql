select * from customers;
-- stored procedure with single parameter

delimiter //

create  procedure selectAllCustomersByCity(IN myCity varchar(50))

begin

select city from customers where city=myCity;

end //

delimiter ;

call selectAllCustomersByCity("Las Vegas");