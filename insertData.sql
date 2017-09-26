spool insertData.txt;

prompt
prompt
prompt |------------------------------------------------|
prompt |---------       POPULATING TABLES     ----------|
prompt |------------------------------------------------|
prompt |---------     BYTE BISTRO MOTORS      ----------|
prompt |------------------------------------------------|
prompt 

--insert Make values
INSERT INTO Make VALUES('Toyota', 'Japan');
INSERT INTO Make VALUES('Tesla', 'USA');
INSERT INTO Make VALUES('BMW', 'Germany');
INSERT INTO Make VALUES('Chevy', 'USA');
INSERT INTO Make VALUES('Ford', 'USA');

--insert Model values
INSERT INTO Model VALUES('Camry', '2016', 'Toyota');
INSERT INTO Model VALUES('Camry', '2015', 'Toyota');
INSERT INTO Model VALUES('Carola', '2013', 'Toyota');
INSERT INTO Model VALUES('Carola', '2015', 'Toyota');
INSERT INTO Model VALUES('i3', '2016', 'BMW');
INSERT INTO Model VALUES('i8', '2016', 'BMW');
INSERT INTO Model VALUES('F-150', '2011', 'Ford');
INSERT INTO Model VALUES('Tahoe', '2016', 'Chevy');
INSERT INTO Model VALUES('Tahoe', '2015', 'Chevy');


--insert vehicle values
INSERT INTO Vehicle VALUES('7812LJSKLDJF982789JF', 'RED', 'Camry', '2016', 5000);
INSERT INTO Vehicle VALUES('6812LJSKLDJF982789JG', 'BLUE', 'Carola', '2013', 100000);
INSERT INTO Vehicle VALUES('7812AJSKLDJF982789JD', 'GREEN', 'Carola', '2015', 25688);
INSERT INTO Vehicle VALUES('3812LJSKLDJF9821234JF', 'RED', 'F-150', '2011', 86000);
INSERT INTO Vehicle VALUES('18712LJSKLDJF982789JF', 'BLACK', 'Tahoe', '2016', 56050);
INSERT INTO Vehicle VALUES('7812LJ3KLDJF982789JQ', 'RED', 'Camry', '2016', 596);
INSERT INTO Vehicle VALUES('2322LDDFKJDK00SDFKJD', 'WHITE', 'i3', '2016', 2023);
INSERT INTO Vehicle VALUES('5994ITOQIOMVJDF95839', 'BLUE', 'Tahoe', '2015', 50200);
INSERT INTO Vehicle VALUES('1100DIDKJAJKOTOPT429', 'GREEN', 'Camry', '2015', 75688);

--insert plate values
INSERT INTO Plate VALUES('CA', '7DJW931', '7812LJSKLDJF982789JF');
INSERT INTO Plate VALUES('WA', '2DJ4901', '6812LJSKLDJF982789JG');
INSERT INTO Plate VALUES('OR', '1GJW930', '3812LJSKLDJF9821234JF');
INSERT INTO Plate VALUES('OR', '7DJW431', '7812AJSKLDJF982789JD');
INSERT INTO Plate VALUES('OR', '8DJA331', '18712LJSKLDJF982789JF');
INSERT INTO Plate VALUES('CA', '7SDF993', '2322LDDFKJDK00SDFKJD');
INSERT INTO Plate VALUES('AZ', '6GGH120', '5994ITOQIOMVJDF95839');
INSERT INTO Plate VALUES('WY', '7DDS399', '1100DIDKJAJKOTOPT429');


--insert registration values
INSERT INTO Registration VALUES('20-JUN-2015', '20-JUN-2016', 'Pete Johnson', '18712LJSKLDJF982789JF', '8DJA331');
INSERT INTO Registration VALUES('20-JUN-208', '20-JUN-2010', 'Lisa Smith', '7812LJSKLDJF982789JF', '7DJW931');
INSERT INTO Registration VALUES('20-JUN-2016', '20-JUN-2016', 'Chris Johnson', '7812AJSKLDJF982789JD', '7DJW431');
INSERT INTO Registration VALUES('10-JAN-2015', '09-JAN-2016', 'Sam Bogie', '2322LDDFKJDK00SDFKJD', '7SDF993');
INSERT INTO Registration VALUES('11-DEC-2016', '11-DEC-2017', 'Jeb Bush', '5994ITOQIOMVJDF95839', '6GGH120');
INSERT INTO Registration VALUES('09-SEP-2016', '08-SEP-2017', 'Tyler Durden', '1100DIDKJAJKOTOPT429', '7DDS399');

--insert Customer values
INSERT INTO Customer VALUES('1305', '7608598494', 'Carla Johnson', 'CJ@yahoo.com', 'Camry', '2016');
INSERT INTO Customer VALUES('1306', '7604452676', 'Mike Davis', 'm.davis@mail.com', 'Carola', '2013');

prompt
prompt
prompt |------------------------------------------------|
prompt |---------    DATABASE IS LOADED       ----------|
prompt |----------PLEASE SEARCH OR ADD DATA-------------|
prompt |------------------------------------------------|
prompt |---------     BYTE BISTRO MOTORS      ----------|
prompt |------------------------------------------------|
prompt 


spool off;