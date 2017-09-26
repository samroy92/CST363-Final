set heading off;
set echo off;
set heading off;
spool lookupData.txt;

prompt
prompt
prompt |------------------------------------------------|
prompt |--------- VEHICLE LICENSE LOOKUP TOOL ----------|
prompt |------------------------------------------------|
prompt |---------           VLLT              ----------|
prompt |------------------------------------------------|
prompt 

accept inputPlate prompt 'License plate: ';

prompt
prompt Thank you, we will process your request:


SELECT 'License Plate	: ' || upper(trim(plate)) 
FROM Plate 
WHERE plate = '&inputPlate';

SELECT 'VIN Number	: ' || upper(trim(vin)) 
FROM Plate 
WHERE plate = '&inputPlate';

SELECT 'Description	: ' || upper(trim(Vehicle.color)) || ' ' || upper(trim(Model.model_year)) || ' ' || upper(trim(Model.make_name)) || ' ' || upper(trim(Model.model_name))
FROM Vehicle,Model,Plate
WHERE Plate.plate = '&inputPlate' AND Vehicle.vin = Plate.vin AND Vehicle.model_name = Model.model_name AND Vehicle.model_year = Model.model_year;

SELECT 'Registered in	: ' || upper(trim(state))
FROM Plate 
WHERE plate = '&inputPlate';

SELECT 'Title Owner	: ' || upper(trim(owner))
FROM Registration,Plate
WHERE Plate.plate = '&inputPlate' AND Registration.vin = Plate.vin;

SELECT 'Valid Until	: ' || upper(trim(to_date))
FROM Registration
WHERE plate = '&inputPlate';

spool off;