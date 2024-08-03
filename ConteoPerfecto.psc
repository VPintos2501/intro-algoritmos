Algoritmo ConteoPerfecto
    Definir tama�o, i, num, max, cFaltantes,j Como Entero
    Definir vEnteros, vFaltantes Como Entero
    
    // Solicitar al usuario el tama�o del vector
    Escribir "Ingrese el tama�o del vector: "
    Leer tama�o
    
    // Definir el vector vEnteros
    Dimension vEnteros[tama�o]
    
    // Llenar el vector con n�meros enteros y validar que sean mayores o iguales que 0
    Para i = 0 Hasta tama�o-1 Hacer
        Repetir
            Escribir "Ingrese el n�mero entero positivo para la posici�n ", i+1, ": "
            Leer num
        Hasta Que num >= 0
        vEnteros[i] = num
    Fin Para
	
    // Hallar los n�meros que faltan para un conteo perfecto
    max = vEnteros[0]
    
    // Encontrar el n�mero mayor en el vector
    Para i = 1 Hasta tama�o-1 Hacer
        Si vEnteros[i] > max Entonces
            max = vEnteros[i]
        Fin Si
    Fin Para
    
    // Inicializar el vector de faltantes con tama�o max
    Dimension vFaltantes[max]
    
    cFaltantes = 0
    
    // Buscar los n�meros que faltan
    Para num = 1 Hasta max Hacer
        // Verificar si num est� en vEnteros
        j = 0
        Mientras j < tama�o & vEnteros[j] <> num Hacer
            j = j + 1
        Fin Mientras
        
        // Si num no se encuentra en vEnteros, se a�ade a vFaltantes
        Si j = tama�o Entonces
            vFaltantes[cFaltantes] = num
            cFaltantes = cFaltantes + 1
        Fin Si
    Fin Para
    
    // Mostrar los n�meros faltantes
    Si cFaltantes > 0 Entonces
        Escribir "Los n�meros que faltan para un conteo perfecto son: "
        Para i = 0 Hasta cFaltantes-1 Hacer
            Escribir Sin Saltar vFaltantes[i], " "
        Fin Para
		Escribir ""
    SiNo
        Escribir "No faltan n�meros para un conteo perfecto."
		Escribir ""
    Fin Si
FinAlgoritmo