create view v_tajny with encryption
as
select * from [SalesLT].[Customer]
go

select * from v_tajny
go;

create view v_tajny 
as 
select * from [SalesLT].[Customer]
with check option	
