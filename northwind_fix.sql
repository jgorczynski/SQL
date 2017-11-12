--Two lines need to be changed while executing instnwnd.sql file on SSMS 2012 and above:
exec sp_dboption 'Northwind', 'trunc. log on chkpt.', 'true'
exec sp_dboption 'Northwind', 'select into/bulkcopy', 'true'

--replace them with the following statement
alter database Northwind set recovery simple
go
