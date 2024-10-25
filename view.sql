SQL> select * from home;

        ID NAME             SRNO
---------- ---------- ----------
         1 Diya                3
         2 Drashti             2

SQL> alter table home drop column srno;

Table altered.

SQL> alter table home add sallary varchar(20);

Table altered.

SQL> select * from home;

        ID NAME       SALLARY
---------- ---------- --------------------
         1 Diya
         2 Drashti

SQL> update home set sallary=1400 where id=1;

1 row updated.

SQL> /

1 row updated.

SQL> update home set sallary=1600 where id=2;

1 row updated.

SQL> select * from home;

        ID NAME       SALLARY
---------- ---------- --------------------
         1 Diya       1400
         2 Drashti    1600

SQL> create view xyz as select id,name,sallary where sallary>15
create view xyz as select id,name,sallary where sallary>1500
                                          *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> create view xyz as select id,name,sallary from home where 

View created.

SQL> select * from home;

        ID NAME       SALLARY
---------- ---------- --------------------
         1 Diya       1400
         2 Drashti    1600

SQL> select * from xyz;

        ID NAME       SALLARY
---------- ---------- --------------------
         2 Drashti    1600

SQL> grant create view to scott;

Grant succeeded.

SQL> grant select on xyz to student;