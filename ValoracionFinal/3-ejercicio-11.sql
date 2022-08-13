-- Valoración Final Módulo Programador TSDWAD
-- Bases de Datos
-- Alumno Mario Guerra

-- Ejercicio 11:
-- Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.


-- la siguiente query nos da los perros que se antendieron en 2022:
select
   distinct perro
from historial
where fecha >= '2022-01-01';
-- Resultado: perro 16 'Toto'
--            perro 13 'Puppy'


-- la siguiente query nos da los perros de menos de 5 años de edad:
select
   id_perro, nombre
from perro
where fecha_nac > DATE_SUB(now(), INTERVAL 5 year);
-- Resultado: perra 15 'Olivia'
--            perro 16 'Toto'


-- la siguiente query resuelve el ejercicio 11:
select
   distinct D.nombre, D.apellido
from perro P
left join dueno D on D.dni = P.dni_dueno
where P.fecha_nac > DATE_SUB(now(), INTERVAL 5 year)
  and P.id_perro not in
      (select
          distinct perro
       from historial
       where fecha >= '2022-01-01');
-- Resultado: 'Alfonso' 'Rios'
--            que es el dueño de la perra 15 'Olivia'
--            que es la unica que cumple las dos condiciones
