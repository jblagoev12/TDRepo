--liquibase formatted sql
--changeset JBLAGOEV:DEMO_SQL_4 failOnError:true
--preconditions onFail:CONTINUE
--precondition-sql-check expectedResult:1 SELECT COUNT(1) FROM tables WHERE table_name = 'TABLE_DEMO_SQL' AND schema_name = 'EXT'
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM table_columns WHERE table_name = 'TABLE_DEMO_SQL' AND schema_name = 'EXT' and COLUMN_NAME = 'COMMENTS'
--rollback ALTER TABLE TABLE_DEMO_SQL DROP (COMMENTS); 
--comment: Add column comments to table TABLE_DEMO_SQL
--validCheckSum: ANY
alter table TABLE_DEMO_SQL add (COMMENTS NVARCHAR(1000));

