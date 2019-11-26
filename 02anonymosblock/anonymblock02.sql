DECLARE

zahl NUMBER;
begin

zahl:=1;
dbms_output.put_line('Hello World' || zahl);
   
    
    exception
    when no_data_found then
    null  ;
end;