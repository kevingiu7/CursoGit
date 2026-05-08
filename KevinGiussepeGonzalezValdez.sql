

CREATE LOGIN loginalumnoA WITH PASSWORD = 'alumnoA';
CREATE USER usuarioalumnoA FOR LOGIN loginalumnoA;

CREATE LOGIN loginprofesorA WITH PASSWORD = 'profesorA';
CREATE USER usuarioprofesorA FOR LOGIN loginprofesorA;

CREATE LOGIN loginadminA WITH PASSWORD = 'adminA';
CREATE USER usuarioadminA FOR LOGIN loginadminA;

CREATE LOGIN loginconsultaA WITH PASSWORD = 'consultaA';
CREATE USER usuarioconsultaA FOR LOGIN loginconsultaA;


--9,10
GRANT SELECT ON alumnos TO usuarioalumnoA
GRANT INSERT ON matriculan TO usuarioalumnoA
--11
GRANT UPDATE ON matriculan TO usuarioprofesorA
--12
GRANT SELECT ,INSERT , UPDATE, DELETE ON asignaturas TO usuarioadminA
--13
GRANT SELECT ON alumnos TO usuarioconsultaA
--14
GRANT SELECT ON asignaturas TO usuarioconsultaA
--15
GRANT SELECT ON matriculan TO usuarioconsultaA
--16
REVOKE INSERT ON matriculan TO usuarioalumnoA
--17
REVOKE INSERT ON alumnos TO usuarioalumnoA
--18
REVOKE UPDATE ON matriculan TO usuarioprofesorA
--19
REVOKE SELECT ,INSERT , UPDATE, DELETE ON asignaturas TO usuarioadminA
--20
REVOKE SELECT ON matriculan TO usuarioconsultaA
--21,22
CREATE LOGIN loginvista WITH PASSWORD = 'loginvista';
CREATE USER usuariovista FOR LOGIN loginvista;
--23
GRANT SELECT ON alumnos TO usuariovista
--24,25
CREATE LOGIN loginacceso WITH PASSWORD = 'loginacceso';
CREATE USER usuarioacceso FOR LOGIN loginacceso;
--26
GRANT SELECT ,INSERT , UPDATE, DELETE ON asignaturas  TO usuarioacceso
GRANT SELECT ,INSERT , UPDATE, DELETE ON  alumnos TO usuarioacceso
--27,28
CREATE LOGIN loginregistro WITH PASSWORD = 'loginregistro';
CREATE USER usuarioregistro FOR LOGIN loginregistro;
--29
GRANT INSERT ON alumnos TO usuarioregistro
--30
DROP USER usuariovista
DROP LOGIN loginvista











