CREATE TABLE data
(
 geschlecht CHAR(1),
 groesse  NUMBER,
 gewicht NUMBER,
 alt NUMBER

);


<<hauptprogramm>>
DECLARE
G_var NUMBER;
m_var NUMBER;
l_var NUMBER;
t_var NUMBER;
BEGIN --Äußer Schleife

m_var:=gewicht;
l_Var:=groesse;
t_var:=alt;
dbms_output.put_line('l_VAR: ' || l_var);
dbms_output.put_line('l_OUTER: ' || l_outer);

<<unterblock>>
DECLARE
    l_var NUMBER;
    l_inner NUMBER;
begin
    oberblock.l_var:=2;
    l_inner:=3;

    dbms_output.put_line('l_VAR: ' || l_var);
    dbms_output.put_line('l_OUTER: ' || l_inner);
     dbms_output.put_line('l_OUTER: ' || l_outer);
end;

    
    exception
    when no_data_found then
    null  ;
end;