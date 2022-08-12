##Crear una lista en Python denominada “Dueno”
##que contenga los siguientes valores

dueno = [ 27957346 , "Juan" ,  "Perez" , 4789689 ,  "Belgrano 101" ]

##Dichos datos se corresponden  con los datos del dueño de un perro
##Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

tel = dueno [3]
if dueno [0] > 26000000:
    print ("Numero de" , (dueno [1]), "es", tel)
    
else:
    dueno [0] < 26000000
    print ("No se puede mostrar DNI menor a 26 millones")
