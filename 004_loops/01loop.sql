-- Basis LOOP

declare
l_counter NUMBER :=1;
l_sum NUMBER :=0;
begin
  loop
    l_sum := l_sum + l_counter;
    l_counter := l_counter + 1;
    EXIT WHEN l_counter >3;
    ------SCHLEIFE VERLASSEN 1
    -- IF l_counter >3 THEN
    -- EXIT;
    -- END IF;

    -- SCHLEIFE VERLASSEN 2
    -- IF l_counter >3 THEN
    -- RETURN;
    -- END IF;

    -- SCHLEIFE VERLASSEN 3
    -- IF l_counter >3 THEN
    -- GOTO out_of_loop;
    -- END IF;

    -- <<mylabel>>
    -- GOTO mylabel

  end loop;
end;


-- FOR SCHLEIFE vorwärts
-- l_counter ist fix
-- von innen nach außen lesbar : <<outer>> outer.l_counter

DECLARE
 l_sum NUMBER:=0;
BEGIN 
    FOR l_counter in 1..3 loop
      l_sum:=l_sum+l_counter;
    end loop;
END;        



-- FOR SCHLEIFE rückwärts

DECLARE
 l_sum NUMBER:=0;
BEGIN 
    FOR l_counter in REVERSE 1..3 loop
      l_sum:=l_sum+l_counter;
    end loop;
END;     

-- startet die Schleife nicht
DECLARE
BEGIN 
    FOR i in 3..1 loop
       dbms_output.put_line( i);
    end loop;
END; 


-- Variable Startwerte
DECLARE
BEGIN 
    FOR i in 2..7 loop
       dbms_output.put_line( i);
    end loop;
END; 

-- laufvariable, kann modifiziert werden
-- Aufgabe1 Summe aller Zahlen von 1 bis N
-- Aufgabe2 Summe alle gerade Zahlen von 1-N ---- 2n ist gerade
-- Aufhabe3 Summe aller ungeraden Zahlen von 1 bis N ---2n+1 oder ist ungerade

-- Aufgabe 3
DECLARE
N NUMBER:=10;
summe NUMBER:=0;
test NUMBER:=0;
ungeradertest NUMBER:=0;
BEGIN 
    FOR i in 1..N loop
    IF MOD(i,2)=1 THEN   
       summe:=summe+i;
    END IF; 
    end loop;
     dbms_output.put_line( 'Die Summe ist'||summe);
--Test
test:=N*(N+1)/2
 dbms_output.put_line( 'Die Summe aller Zahlen ist mit Gauss'||test);
 ungeradertest:=POWER(N,2);
 dbms_output.put_line( 'Die Summe allerungeraden Zahlen '||ungeradertest);
-- 

END; 

-- Aufgabe 2
DECLARE
N NUMBER:=10;
summe NUMBER:=0;
test NUMBER:=0;
ungeradertest NUMBER:=0;
BEGIN 
    FOR i in 1..N loop
    IF MOD(i,2)=0 THEN   
       summe:=summe+i;
    END IF; 
    end loop;
     dbms_output.put_line( 'Die Summe ist'||summe);
--Test
test:=N*(N+1)/2
 dbms_output.put_line( 'Die Summe aller Zahlen ist mit Gauss'||test);
 ungeradertest:=POWER(N,2);
 dbms_output.put_line( 'Die Summe allerungeraden Zahlen '||ungeradertest);
-- 

END; 


-- Counter Sprünge
DECLARE
summe NUMBER:=0;
BEGIN 
    FOR i in 1..10 loop
       IF MOD(i,2)=0 THEN   
         CONTINUE;

      END IF;  
      summe:=summe+i;
    dbms_output.put_line( i);
    end loop;
END; 

-- FOR VERSCHACHTELUNG, zwei oder mehr Indizes
declare
BEGIN 
    FOR i in 1..10 loop
       dbms_output.put_line( i);
       FOR j in 1..10 loop
           dbms_output.put_line('('||i||','|| j||')');
    end loop;
    end loop;
END; 


/*
Anzahl der Stellen der Zahl zu bestimmer
*/



/*
Aufgabe 1 W4.4 Pincode Generator


*/

declare
l_pin NUMBER:=0;
begin
   FOR i in 0..9999 loop
        IF 0<=i AND i<10 THEN
            dbms_output.put_line('000' || i);
        ELSIF 10<=i AND i<=99 THEN
            dbms_output.put_line('00' || i);
        ELSIF 100<=i AND i<=999 THEN
            dbms_output.put_line('0' || i);
        ELSE
            dbms_output.put_line(i);
        END IF;
    end loop;
end;
/
