select * from customers;

-- stored procedure with two parameters

delimiter //

create procedure selectAllCustomersByCityPincode(IN myCity varchar(50), IN pincode varchar(15))

begin

select * from customers where city=myCity and postalCode=pincode;

end //

delimiter ;

call selectAllCustomersByCityPincode('Singapore','077903');