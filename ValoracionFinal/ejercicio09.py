# Valoración Final Módulo Programador TSDWAD
# Introducción a la programación Python:
# Alumno Mario Guerra

# Consigna ejercicio 9:
# Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:
#         8520, 9510, 7530, 3570, 1590
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota "Toto".
# Crear una función para determinar el valor máximo de atención gastada en "Toto".

Historial5 = (8520, 9510, 7530, 3570, 1590)

# esta funcion utiliza la funcion predefinida "max"
def maxAtencion1():
    maxi = max(Historial5)
    return maxi

# esta funcion recorre la tupla para encontrar el maximo
def maxAtencion2():
    maxi = Historial5[0]
    for monto in Historial5:
        if (monto > maxi):
            maxi = monto
    return maxi

# esta funcion recorre la tupla para sumar el total
def totalAtencion():
    suma = 0
    for monto in Historial5:
        suma += monto
    return suma


print("Comienzo del programa :")
print("-- Valor maximo de una atención = $",maxAtencion1())
print("-- Valor maximo de una atención = $",maxAtencion2())
print("-- Total de lo gastado en Toto = $",totalAtencion())
print("Fin del programa.")
