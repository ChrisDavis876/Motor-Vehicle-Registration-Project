create procedure spIssueVehicleRegistration
@reg_num varchar(15)
as
BEGIN
    select * from Customer inner join veh_info
    on customer.trn=veh_info.trn inner join payment
    on Customer.trn=payment.trn inner join Cert_issued
    on Customer.trn=Cert_issued.trn
	where veh_info.reg_num = @reg_num
END

execute spIssueVehicleRegistration 'CH1231'