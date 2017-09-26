set echo off 
set verify off
set heading off

spool addCust.txt

prompt ---Byte Bistro Dealership ---

accept vcustomer_id prompt 'Please enter cutomer id: ';
accept vphone_number prompt 'Please enter phone number: ';
accept vname prompt 'Please enter customer name: ';
accept vemail_Address prompt 'Please enter email address: ';
accept vmodel_preference prompt 'Please enter car model preference: ';
accept vyear_preference prompt 'Please enter model year preference: ';

insert into Customer values('&vcustomer_id', '&vphone_number', '&vname', '&vemail_Address', '&vmodel_preference', '&vyear_preference');

prompt Thank You
prompt The following record has been added:
select *
from Customer
where customer_id = '&vcustomer_id';

spool off