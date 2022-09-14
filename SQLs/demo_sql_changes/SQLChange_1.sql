--liquibase formatted sql
--changeset JBLAGOEV:DEMO_SQL_1 failOnError:true
--preconditions onFail:CONTINUE
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM tables WHERE table_name = 'TABLE_DEMO_SQL' AND schema_name = 'EXT'
--rollback DROP TABLE TABLE_DEMO_SQL; 
--comment: Initial creation of table TABLE_DEMO_SQL
--validCheckSum: ANY
create column table TABLE_DEMO_SQL(ID BIGINT PRIMARY KEY, VALUE VARCHAR(100));

--liquibase formatted sql
--changeset JBLAGOEV:DEMO_SQL_2 failOnError:true
--preconditions onFail:CONTINUE
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM SEQUENCES WHERE sequence_name = 'SEQ_DEMO_SQL' AND schema_name = 'EXT'
--rollback DROP SEQUENCE SEQ_DEMO_SQL; 
--comment: Initial creation of a sequence SEQ_DEMO_SQL
--validCheckSum: ANY
create sequence SEQ_DEMO_SQL start with 1;

