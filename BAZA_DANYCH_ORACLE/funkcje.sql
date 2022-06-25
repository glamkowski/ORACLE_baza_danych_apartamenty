--Funckja do widoku nr.1
CREATE OR REPLACE FUNCTION pokaz(x IN CHAR)
RETURN VARCHAR2
IS
BEGIN
if x = 'D' THEN
RETURN upper('dostepny');
elsif x = 'Z' THEN
RETURN upper('zajety');
else
RETURN upper('status nieokreœlony');
end if;
END;