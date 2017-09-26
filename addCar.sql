set echo off 
set verify off 
set heading off

spool addCarData.txt

prompt --- Byte Bistro Dealership ---

accept vvin prompt 'Please enter VIN: ';
accept vcolor prompt 'Please enter color: ';
accept vmodel_name prompt'Please enter model name: ';
accept vmodel_year prompt'Please enter model year: ';
accept vmileage prompt 'Please enter vehilcle mileage: ';
accept vplate prompt 'Please enter plate number: ';
accept vstate prompt 'Please enter state: ';
accept vfrom_date prompt 'Please enter registration start date: ';
accept vto_date prompt 'Please enter registration end date: ';
accept vowner prompt 'Please enter owner name: ';

insert into Vehicle values('&vvin', '&vcolor', '&vmodel_name', '&vmodel_year', '&vmileage');

insert into Plate values('&vstate', '&vplate', '&vvin');

insert into Registration values('&vfrom_date', '&vto_date', '&vowner', '&vvin', '&vplate');

prompt The following record has been added:
select Vehicle.vin, Vehicle.color, Vehicle.model_name, Vehicle.model_year, Vehicle.mileage, Plate.plate, Plate.state, Registration.from_date, Registration.to_date, Registration.owner  
from Vehicle, Plate, Registration
where Vehicle.vin = Plate.vin and Plate.plate = Registration.plate
group by Vehicle.vin, Vehicle.color, Vehicle.model_name, Vehicle.model_year, Vehicle.mileage, Plate.plate, Plate.state, Registration.from_date, Registration.to_date, Registration.owner 
having Vehicle.vin = '&vvin';

spool off 
