ALTER TRIGGER TR_INSERT_DEPARTMENT
ON DEPARTMENT
FOR INSERT
AS
BEGIN
	DECLARE @DEPARTMENTID INT
	SELECT @DEPARTMENTID=DEPARTMENTID FROM INSERTED
	INSERT INTO MESSAGE 
	VALUES ('RECORD WITH DEPARTMENTID='+CAST(@DEPARTMENTID AS VARCHAR)+' IS INSERTED ON'
	+CAST(GETDATE() AS VARCHAR(50)))
END

CREATE TABLE MESSAGE(
	MESSAGE VARCHAR(500)
)

INSERT INTO DEPARTMENT VALUES(6,'EC')

SELECT * FROM MESSAGE