# Valoración Final Módulo Programador TSDWAD

# Alumno: Mariano Delfino

# ejercicio 3:Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

#  13,  Puppy,  12/12/2012 , Macho, 123

# Que se corresponde con los datos de un perro de nuestra base de datos 
# (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
# Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” 
# por 28957346 .
from datetime import datetime
Perro = [13, "puppy", datetime(2012, 12, 12),"Macho", 123]
Perro [2] = datetime(2012, 12, 13)
Perro[-1]=28957346