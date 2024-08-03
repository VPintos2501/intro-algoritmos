Algoritmo InventarioTienda
	Definir cantidadProductos, i Como Entero
	Definir productos Como Caracter
	Definir pesos Como Real
	Definir precios Como Real
	Definir tama�os Como Texto
	Definir cantidades Como Entero
	Definir op Como Entero
	Definir pesoPromedio, sumaPesos, valorTotal Como Real
	Escribir "Ingrese la cantidad de productos a registrar:"
	Leer cantidadProductos
	
	Dimension productos[cantidadProductos]
	Dimension pesos[cantidadProductos]
	Dimension precios[cantidadProductos]
	Dimension tama�os[cantidadProductos]
	Dimension cantidades[cantidadProductos]
	
	Para i = 0 Hasta cantidadProductos-1 Hacer
		Escribir "Ingrese la informaci�n del producto ", i+1, ":"
		Escribir "Nombre:"
		Leer productos[i]
		Escribir "Peso(Kg):"
		Leer pesos[i]
		Escribir "Precio($):"
		Leer precios[i]
		Escribir "Tama�o(Cm):"
		Leer tama�os[i]
		Escribir "Cantidad:"
		Leer cantidades[i]
	Fin Para
	Esperar Tecla
	Limpiar Pantalla
	
	Repetir
		Escribir "Seleccione una opci�n:"
		Escribir "1. Consultar productos registrados"
		Escribir "2. Calcular el peso promedio de los productos"
		Escribir "3. Calcular el valor total por producto"
		Escribir "4. Salir"
		Leer op
		
		Segun op Hacer
			Caso 1:
				Escribir "Productos registrados:"
				Para i = 0 Hasta cantidadProductos-1 Hacer
					Escribir "Producto ", i+1, ":"
					Escribir "Nombre: ", productos[i]
					Escribir "Peso(Kg): ", pesos[i]
					Escribir "Precio($): ", precios[i]
					Escribir "Tama�o(Cm): ", tama�os[i]
					Escribir "Cantidad: ", cantidades[i]
					Escribir ""
					
				Fin Para
				Esperar Tecla
				Limpiar Pantalla
				
			Caso 2:
				sumaPesos <- 0
				Para i = 0 Hasta cantidadProductos-1 Hacer
					sumaPesos <- sumaPesos + pesos[i]
				Fin Para
				pesoPromedio <- sumaPesos / cantidadProductos
				Escribir "El peso promedio de los productos es: ", pesoPromedio
				Esperar Tecla
				Limpiar Pantalla
				
			Caso 3:
				Para i = 0 Hasta cantidadProductos-1 Hacer
					valorTotal <- precios[i] * cantidades[i]
					Escribir "El valor total del producto ", productos[i], " es: $", valorTotal
				Fin Para
				Esperar Tecla
				Limpiar Pantalla
				
			Caso 4:
				Escribir "Saliendo del programa..."
				
			De Otro Modo:
				Escribir "Opci�n no v�lida, intente de nuevo."
				
		Fin Segun
	Hasta Que op = 4
	
FinAlgoritmo
