

SQL> create table test(
  2  id number(5),
  3   name varchar(20));

Table created.

SQL> create sequence sq
  2  start with 1
  3  increment by 1;

Sequence created.

SQL> insert into test(id,name)values(1,'rensi');

1 row created.

SQL> insert into test (id,name)values(sq.nextval,'abcd');

1 row created.

SQL> select * from test;

        ID NAME
---------- --------------------
         1 rensi
         1 abcd

SQL> insert into test (id,name)values(sq.nextval,'abcd');

1 row created.

SQL>  select * from test;

        ID NAME
---------- --------------------
         1 rensi
         1 abcd
         2 abcd

SQL> insert into test (id,name)values(sq.nextval,'abcd');

1 row created.

SQL> select * from test;

        ID NAME
---------- --------------------
         1 rensi
         1 abcd
         2 abcd
         3 abcd
		 
SQL>  create synonym tes for test;

Synonym created.

SQL> select * from tes;

        ID NAME
---------- --------------------
         1 rensi
         1 abcd
         2 abcd
		 3 abcd