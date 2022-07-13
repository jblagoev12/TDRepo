--liquibase formatted sql
--changeset yogananda:9995
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Yogananda1 (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Yogananda;


--liquibase formatted sql
--changeset yogananda:991
--preconditions onFail:CONTINUE
--comment: Initial creation of table Yogananda
--validCheckSum: ANY
Create Table Payments (
   ID INTEGER,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);
 
--rollback drop table Payments;