--liquibase formatted sql
--changeset JBLAGOEV:DEMO_SQL_5 runOnChange=true failOnError:true endDelimiter:/ rollbackEndDelimiter:/
--rollback CREATE OR REPLACE PROCEDURE PROC_DEMO_SQL
--rollback (
--rollback    IN X INT,
--rollback    OUT Y INT	
--rollback )
--rollback LANGUAGE SQLSCRIPT
--rollback SQL SECURITY DEFINER
--rollback AS
--rollback BEGIN
--rollback  declare z int;
--rollback  
--rollback  select count(*) into z from TABLE_DEMO_SQL;
--rollback  
--rollback  Y = :X + :Z;
--rollback END;
--rollback /
--comment: Version 2 of procedure PROC_DEMO_SQL
--validCheckSum: ANY
CREATE OR REPLACE PROCEDURE PROC_DEMO_SQL
(
    IN X INT,
    OUT Y INT	
)
LANGUAGE SQLSCRIPT
SQL SECURITY DEFINER
AS
BEGIN
  declare z int;
  
  select count(*) into z from TABLE_DEMO_SQL;
  
  Y = :X + :Z + 1;
END;
/