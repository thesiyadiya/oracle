SQL> create table test(
  id number(3),
  name varchar(20));

Table created.


SQL> create sequence tq  
     start with 1  
  increment by 1;

Sequence created.

SQL> insert into test(id, name) values (tq.nextval, 'Rensi');

1 row created.

SQL> insert into test(id, name) values (tq.nextval, 'Diya');

1 row created.

SQL> insert into test(id, name) values (tq.nextval, 'Drshati');

1 row created.

SQL> select * from test;

        ID NAME
---------- --------------------
         1 Rensi
         2 Diya
         3 Drshati


SQL> select tq.currval from dual;

CURRENT_VAL
-----------
          3

SQL> select tq.nextval from dual;

  NEXT_VAL
----------
         4