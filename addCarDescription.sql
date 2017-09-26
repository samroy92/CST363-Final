set echo off 
set verify off 
set heading off

spool addCarDescription.txt

prompt ---Byte Bistro Dealership ---

accept vmodel_name prompt 'Please enter model of vehicle: ';
accept vmodel_year prompt 'Please enter year of model: ';
accept vmake_name prompt 'Please enter the make of vehicle: ';

insert into Model values('&vmodel_name', '&vmodel_year', '&vmake_name');

prompt Thank You
prompt The following record has been added:
select model_name, model_year, make_name
from Model
where model_name = '&vmodel_name' and model_year = '&vmodel_year';

spool off