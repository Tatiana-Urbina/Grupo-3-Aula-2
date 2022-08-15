historial4 = (7510, 7960, 76180, 800, 4100)

minimo = historial4[0]

for i in historial4:
    if (i < minimo):
        minimo = i

print("El valor mínimo gastado en Olivia es: ", minimo)