--NULL FUNCTION
--I am gonna make an example for how can you create function 

go
  create function agecalculator(@Birthdate datetime)
    returns int 
        begin 
           return datediff(year,@Birthdate,getdate())
              end
go
