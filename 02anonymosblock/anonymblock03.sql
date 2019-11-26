DECLARE
l_var NUMBER;
l_outer NUMBER;

BEGIN --Äußer Schleife

l_var:=1;
l_outer:=1;
dbms_output.put_line('l_VAR: ' || l_var);
dbms_output.put_line('l_OUTER: ' || l_outer);

DECLARE
    l_var NUMBER;
    l_inner NUMBER;
begin
    l_var:=2;
    l_inner:=3;

    dbms_output.put_line('l_VAR: ' || l_var);
    dbms_output.put_line('l_OUTER: ' || l_inner);
     dbms_output.put_line('l_OUTER: ' || l_outer);
end;

    
    exception
    when no_data_found then
    null  ;
end;