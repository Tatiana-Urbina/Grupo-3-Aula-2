#4) Crear un lista en Python denominado “Perro2”
#   que contenga los siguientes valores:

#   14,  Fido,  12/12/2012 , Macho, 23546987

#Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.*/


Perro2 = [14,  "Fido",  "12/12/2012" , "Macho", 23546987]




for i in  range(0 , len(Perro2) // 2):                                  #Se divide por 2 porque en cada iteracion se modifican 2 elementos, por lo tanto no necesito recorrer algo que ya se modifico.
    
    
    
    miVariableTemporal          = Perro2[i]                             #Guardo el valor de la primera posicion para reubicarlo al final
    
    Perro2[i]                   = Perro2[(len(Perro2)-1)-i ]            #Mi primer posicion, tendrá en valor de del final 
    
    Perro2[(len(Perro2)-1)-i ]  = miVariableTemporal                    #Reubico el valor de la primera posicion, al final de la lista
    
    
print(Perro2)



#tambien puede aplicarse un metodo de lista: ej Perro2.reverse()

