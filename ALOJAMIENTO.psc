//Cambia el año actual ingresado por default
Funcion anio_actual=cambiar_anio(anio_actual)
	Definir nAnio_actual Como Entero
	Escribir "Año actual: ", anio_actual
	Escribir "Ingrese nuevo año actual:"
	Leer anio_actual
	Escribir "¡Año actual modificado exitosamente a ", anio_actual,"!"
FinFuncion

//Calcula el costo total del alojamiento, basado en las edades y tiempo de estadia
Funcion total=calcularAlojamiento(edad,estadia,anio_nacimiento,anio_actual Por Referencia)
	Definir precio_noche, total Como Entero
	edad=anio_actual-anio_nacimiento
	
	Escribir "Usted tiene ", edad, " años."
	Si edad >= 0 & edad <=5 Entonces
		
		precio_noche = 15000
		Si estadia > 7 Entonces
			precio_noche = precio_noche*0.95
			total = precio_noche*estadia
			Escribir "Se le aplica un descuento de 5% por una estadia mayor a 7 noches."
			Escribir "Su total a pagar con descuento aplicado es $",total, " por ", estadia, " noches."
		SiNo
			total = precio_noche*estadia
			Escribir "Su total a pagar es $", total, " por ", estadia, " noches."
		FinSi
		
	SiNo
		Si edad > 5 & edad <= 18 Entonces
			
			precio_noche = 25000
			Si estadia > 7 Entonces
				precio_noche = precio_noche*0.95
				total = precio_noche*estadia
				Escribir "Se le aplica un descuento de 5% por una estadia mayor a 7 noches."
				Escribir "Su total a pagar con descuento aplicado es $",total, " por ", estadia, " noches."
			SiNo
				total = precio_noche*estadia
				Escribir "Su total a pagar es $", total, " por ", estadia, " noches."
			FinSi
			
		SiNo
			Si edad > 18 & edad <= 65 Entonces
				
				precio_noche = 30000
				Si estadia > 7 Entonces
					precio_noche = precio_noche*0.95
					total = precio_noche*estadia
					Escribir "Se le aplica un descuento de 5% por una estadia mayor a 7 noches."
					Escribir "Su total a pagar con descuento aplicado es $",total, " por ", estadia, " noches."
				SiNo
					total = precio_noche*estadia
					Escribir "Su total a pagar es $", total, " por ", estadia, " noches."
				FinSi
				
			SiNo
				
				Si edad > 65 Entonces
					precio_noche = 20000
					Si estadia > 7 Entonces
						precio_noche = precio_noche*0.95
						total = precio_noche*estadia
						Escribir "Se le aplica un descuento de 5% por una estadia mayor a 7 noches."
						Escribir "Su total a pagar con descuento aplicado es $",total, " por ", estadia, " noches."
					SiNo
						total = precio_noche*estadia
						Escribir "Su total a pagar es $", total, " por ", estadia, " noches."
					FinSi
				
				FinSi
			
			
			FinSi
		
		FinSi
	FinSi
	
FinFuncion

Algoritmo Alojamiento
	Definir edad,estadia,anio_nacimiento,anio_actual, total Como Entero
	Definir op,end,salir Como Entero
	end = 1
	anio_actual=2024
	edad=0
	
	Hacer
		
		Escribir "Elija una opcion"
		Escribir "1-Cambiar año actual"
		Escribir "2-Calcular total a pagar por alojamiento"
		Escribir "0-Finalizar programa"
		Leer  op
		
		Segun op
			1:
				salir=0
				Mientras  salir<>1 Hacer
					Limpiar Pantalla
					anio_actual=cambiar_anio(anio_actual)
					Escribir "Desea volver al menu principal? (1-Si / 0-No)"
					Leer salir
				FinMientras
				Limpiar Pantalla
			2:
				Limpiar Pantalla
				Escribir "Bienvenido!"
				Escribir "Ingrese su año de nacimiento:"
				Leer anio_nacimiento
				Escribir "Ingrese su tiempo de estadia:"
				Leer estadia
				
				total=calcularAlojamiento(edad,estadia,anio_nacimiento,anio_actual)
				Escribir ""
				Escribir "Desea seguir ingresando datos? (1-Si / 0-No)"
				Leer end
				Limpiar Pantalla
				
			0:
				end = 0
			De Otro Modo:
				Escribir "La opcion ingresada no es valida. Espere 3 segundos e intentelo de nuevo."
				Esperar 3 Segundos
				Limpiar Pantalla
		FinSegun
	Hasta Que end == 0
	Escribir "Programa Finalizado."
	
FinAlgoritmo
	