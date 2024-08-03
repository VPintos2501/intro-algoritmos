Algoritmo ConteoPerfecto
    Definir tamaño, i, num, max, cFaltantes,j Como Entero
    Definir vEnteros, vFaltantes Como Entero
    
    // Solicitar al usuario el tamaño del vector
    Escribir "Ingrese el tamaño del vector: "
    Leer tamaño
    
    // Definir el vector vEnteros
    Dimension vEnteros[tamaño]
    
    // Llenar el vector con números enteros y validar que sean mayores o iguales que 0
    Para i = 0 Hasta tamaño-1 Hacer
        Repetir
            Escribir "Ingrese el número entero positivo para la posición ", i+1, ": "
            Leer num
        Hasta Que num >= 0
        vEnteros[i] = num
    Fin Para
	
    // Hallar los números que faltan para un conteo perfecto
    max = vEnteros[0]
    
    // Encontrar el número mayor en el vector
    Para i = 1 Hasta tamaño-1 Hacer
        Si vEnteros[i] > max Entonces
            max = vEnteros[i]
        Fin Si
    Fin Para
    
    // Inicializar el vector de faltantes con tamaño max
    Dimension vFaltantes[max]
    
    cFaltantes = 0
    
    // Buscar los números que faltan
    Para num = 1 Hasta max Hacer
        // Verificar si num está en vEnteros
        j = 0
        Mientras j < tamaño & vEnteros[j] <> num Hacer
            j = j + 1
        Fin Mientras
        
        // Si num no se encuentra en vEnteros, se añade a vFaltantes
        Si j = tamaño Entonces
            vFaltantes[cFaltantes] = num
            cFaltantes = cFaltantes + 1
        Fin Si
    Fin Para
    
    // Mostrar los números faltantes
    Si cFaltantes > 0 Entonces
        Escribir "Los números que faltan para un conteo perfecto son: "
        Para i = 0 Hasta cFaltantes-1 Hacer
            Escribir Sin Saltar vFaltantes[i], " "
        Fin Para
		Escribir ""
    SiNo
        Escribir "No faltan números para un conteo perfecto."
		Escribir ""
    Fin Si
FinAlgoritmo