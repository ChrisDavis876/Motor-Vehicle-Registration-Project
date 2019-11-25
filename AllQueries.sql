create database Insurance
use Insurance

create table tbl_insurance_check(
    cert_num int identity(1287321,12) primary key,
    trn varchar(15),
    plate_num varchar(25),
    exp_date date
)

insert into tbl_insurance_check values('12345678', 'CL5678', '2020/01/12')
select * from tbl_insurance_check

GO;
alter procedure spGetExpiryDate
@regNum varchar(15)
as
begin
select exp_date from tbl_insurance_check where plate_num = @regNum;

end

exec spGetExpiryDate 'ch1234'

go;
create procedure IsExpired
@regNum varchar(15)
as
begin
declare @x date
declare @temp1 int
Declare @result int 
select @x=exp_date from tbl_insurance_check where plate_num = @regNum;
select @temp1 = datediff(day,@x, getdate())
if @temp1 >0 
set @result = 1
ELSE
set @result = 0
Select @result as HasExpired
end

execute IsExpired '2013HF'