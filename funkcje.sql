--Funckja do widoku nr.1
CREATE OR REPLACE FUNCTION pokaz(x IN CHAR)
RETURN VARCHAR2
IS
BEGIN
if x = 'D' THEN
RETURN upper('dost�pny');
elsif x = 'Z' THEN
RETURN upper('zaj�ty');
else
RETURN upper('status nieokre�lony');
end if;
END;