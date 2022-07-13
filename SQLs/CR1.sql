--liquibase formatted sql
--changeset yogananda:9998
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Yogananda (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Yogananda;


--liquibase formatted sql
--changeset yogananda:999
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Payments (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Payments;