set verify off 
set echo off;
set heading off;



spool createTables.txt

prompt
prompt
prompt |------------------------------------------------|
prompt |---------      BYTE BISTRO MOTORS     ----------|
prompt |----------------------by------------------------|
prompt |--------- Keith Groves, Oswaldo Minez,----------|
prompt |------Sam Roy, JP Camaclang, Michael Goss-------|
prompt 

DROP TABLE Registration;
DROP TABLE Plate;
DROP TABLE Vehicle;
DROP TABLE Customer;
DROP TABLE Model;
DROP TABLE Make;

CREATE TABLE Make(
    make_name char(30), 
    make_origin char(30), 
    PRIMARY KEY (make_name));

CREATE TABLE Model(
    model_name char(30), 
    model_year char(4), 
    make_name char(30), 
    CONSTRAINT fk_make_name FOREIGN KEY (make_name) REFERENCES Make(make_name), 
    PRIMARY KEY(model_name, model_year));

CREATE TABLE Vehicle(
    vin char(50), 
    color char(10), 
    model_name char(30), 
    model_year char(4), 
    mileage number(10), 
    CONSTRAINT fk_model_name_year FOREIGN KEY (model_name, model_year) REFERENCES Model(model_name, model_year), 
    PRIMARY KEY(vin));

CREATE TABLE Plate(
    state char(2), 
    plate char(7), 
    vin char(50), 
    CONSTRAINT fk_vin FOREIGN KEY (vin) REFERENCES Vehicle(vin), 
    PRIMARY KEY(plate));

CREATE TABLE Registration(
    from_date date, 
    to_date date, 
    owner char(20), 
    vin char(50), 
    plate char(7), 
    CONSTRAINT fk_vin2 FOREIGN KEY (vin) REFERENCES Vehicle(vin), 
    CONSTRAINT fk_plate2 FOREIGN KEY (plate) REFERENCES Plate(plate), 
    PRIMARY KEY(from_date, to_date, vin, plate));

   
CREATE TABLE Customer(
    customer_id char(4), 
    phone_number char(10), 
    name char(20),
    email_Address char(30), 
    model_preference char(30),
    year_preference char(4),
    CONSTRAINT FK_pref FOREIGN KEY (model_preference, year_preference) REFERENCES Model(model_name, model_year),  
    PRIMARY KEY(customer_id));

prompt
prompt
prompt |------------------------------------------------|
prompt |---------     USE "start insertData"  ----------|
prompt |------------- TO POPULATE TABLES   -------------|
prompt |---------                             ----------|
prompt |------------------------------------------------|
prompt 
   
spool off