CREATE TABLE department (
    dept_id     INTEGER PRIMARY KEY,
    name        VARCHAR(20)
);

CREATE TABLE employee (
    emp_id      INTEGER PRIMARY KEY,
    fname       VARCHAR(20),
    lname       VARCHAR(20),
    start_date  DATE,
    dept_id     INTEGER,
    title       VARCHAR(20),
    superior_emp_id INTEGER,
    CONSTRAINT fk_employee_dept
        FOREIGN KEY (dept_id)
        REFERENCES department(dept_id),
    CONSTRAINT fk_employee_superior
        FOREIGN KEY (superior_emp_id)
        REFERENCES employee(emp_id)
);

CREATE TABLE customer (
    cust_id     INTEGER PRIMARY KEY,
    fname       VARCHAR(20),
    lname       VARCHAR(20),
    address     VARCHAR(60),
    city        VARCHAR(20),
    state       VARCHAR(2),
    zip         VARCHAR(10)
);

CREATE TABLE account (
    account_id      INTEGER PRIMARY KEY,
    cust_id         INTEGER,
    open_date       DATE,
    last_activity   DATE,
    open_emp_id     INTEGER,
    product_cd      VARCHAR(10),
    avail_balance   DECIMAL(10,2),
    pending_balance DECIMAL(10,2),
    status          VARCHAR(10),
    CONSTRAINT fk_account_customer
        FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
    CONSTRAINT fk_account_employee
        FOREIGN KEY (open_emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE product (
    product_cd      VARCHAR(10) PRIMARY KEY,
    name            VARCHAR(50),
    product_type_cd VARCHAR(10),
    date_offered    DATE,
    date_retired    DATE
);
