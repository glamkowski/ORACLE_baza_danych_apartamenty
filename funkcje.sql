--Funckja do widoku nr.1
CREATE OR REPLACE FUNCTION pokaz(x IN CHAR)
RETURN VARCHAR2
IS
BEGIN
if x = 'D' THEN
RETURN upper('dostêpny');
elsif x = 'Z' THEN
RETURN upper('zajêty');
else
RETURN upper('status nieokreœlony');
end if;
END;