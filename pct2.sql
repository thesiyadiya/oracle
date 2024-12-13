plsql
DECLARE
    CURSOR emp_cursor IS
        SELECT * FROM emp_mstr;
    emp_record emp_mstr%ROWTYPE;
BEGIN
    OPEN emp_cursor;
    FETCH emp_cursor INTO emp_record;
    
    IF emp_cursor%FOUND THEN
        LOOP
            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.emp_id);
            DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.emp_name);
            DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_record.emp_salary);
            DBMS_OUTPUT.PUT_LINE('----------------------------------------');
            FETCH emp_cursor INTO emp_record;
            EXIT WHEN emp_cursor%NOTFOUND;
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No records found in the emp_mstr table.');
    END IF;
    
CLOSE emp_cursor;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

