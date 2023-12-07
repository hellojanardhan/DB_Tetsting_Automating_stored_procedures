select * from customers;
delimiter //

create procedure getCustomerShipping(
in pCustomerNumber int,
out pShipping varchar(20)
)

begin

declare customerCountry varchar(50);

select country into customerCountry from customers where customerNumber=pCustomerNumber;

	case customerCountry
		when 'USA' then
			set pShipping ='2-day shipping';
		when 'Canada' then
			set pShipping ='3-day shipping';
		else 
			set pShipping='5-day shipping';
	end case;
end//

delimiter ;


call getCustomerShipping(122,@shipping);

select @shipping;

    
    


    