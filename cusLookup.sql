set verify off 
set echo off;
set heading off;
spool customerData.txt;

prompt
prompt
prompt |------------------------------------------------|
prompt |---------     CUSTOMER LOOKUP TOOL    ----------|
prompt |------------------------------------------------|
prompt |---------           VLLT              ----------|
prompt |------------------------------------------------|
prompt 

accept vCust_id prompt 'Customer Id: ';

prompt
prompt Thank you, we will process your request:


SELECT 'Customer:       ' || upper(trim(name)) 
FROM Customer 
WHERE customer_id = '&vCust_id';

SELECT 'Phone:          ' || '('||substr(phone_number, 1,3)||')'||substr(phone_number, 4, 3)||'-' ||substr(phone_number, 7,4)
FROM Customer 
WHERE customer_id = '&vCust_id';

SELECT 'E-Mail:         ' || upper(trim(email_address)) 
FROM Customer 
WHERE customer_id = '&vCust_id';

SELECT 'Preference:     ' || upper(trim(Model.model_year)) || ' ' || upper(trim(Model.make_name)) || ' ' || upper(trim(Model.model_name))
FROM Customer, Model
WHERE customer_id = '&vCust_id' AND Model.model_year = year_preference AND model_preference = Model.model_name;

spool off;