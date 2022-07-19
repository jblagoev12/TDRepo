--liquibase formatted sql
--changeset yogananda:99
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Minjie (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Yogananda;


--liquibase formatted sql
--changeset yogananda:100
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Payments1 (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Payments;
