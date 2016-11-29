
What is CRUD?

CRUD is an acronym for Create Read Update Delete, it is the four basic functions / operations for interacting with a database.

What is SQL?

SQL is and acronym for Structured Query Language, it is a standard language for database management systems.


CREATE

``` CREATE ``` Creates a Table in a database.


> ``` INSERT INTO students ( Rob , Mike); ```


``` SELECT ``` Retrieves data from a database using arguments passed to it.

>```SELECT * FROM students;

>```
id | name
----+------
 1 | Rob
(1 row)
```


UPDATE

``` UPDATE ``` Updates a table record/s using arguments passed to it.

> ```UPDATE students SET name = 'Rob' WHERE id = 1;```


DELETE

``` DELETE ``` removes a record/s using arguments passed to it.

> ```DELETE FROM students WHERE id = 1 ```
