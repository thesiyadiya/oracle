SQL> create sequence sq
  2  start with 1
  3  increment by 1;

Sequence created.

SQL> SELECT sq.nextval from dual;

   NEXTVAL
----------
         1

SQL> SELECT sq.nextval from dual;

   NEXTVAL
----------
         2

SQL> SELECT sq.nextval from dual;

   NEXTVAL
----------
         3

SQL> slect sq.currval from dual;
SP2-0734: unknown command beginning "slect sq.c..." - rest of line ignored.
SQL> select sq.currval from dual;

   CURRVAL
----------
         3

SQL> 