DB Desgin Process

1. What kind of thing are we sorting? - Table Name
2. What properties does this thing have? - Columns
3. What type of data does each of those properties contain? - Datatypes of columns


CREATE TABLE <tableName>(
    col col_datatype
);

INSERT INTO <tableName> (cols) VALUES
(value1),(value2),(value3);

SELECT * FROM <tableName>;

UPDATE <tableName> SET <colname> = <value> WHERE <colname> = <value>;

DELETE FROM <tableName> WHERE <colname> = <value>;

Varchar(x) - Variable length character(text) of length X
INTEGER - Non decimal number from -2billion to +2billion

String Operations:
1. || - Join strings
2. concat()
3. upper() / lower()
4. length()

