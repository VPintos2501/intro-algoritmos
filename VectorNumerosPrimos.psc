Algoritmo VectorNumerosPrimos
	Definir vNum,i,tVector, num, cDivisores, res, j Como Entero
	
	Escribir "Ingrese cuantos numeros primos desea hallar" //Se pide el usuario que ingrese la cantidad de numeros primos a hallar
	Leer tVector //Se guarda el valor en una variable
	
	Si (tVector>0) Entonces
		Dimension vNum[tVector] //Se declara el vector del tamaño dado por el usuario
		
		i=0
		j=1
		num=1 //Variable de numero
		
		Mientras i < tVector Hacer //Se hace un bucle que va desde i(0) hasta tVector(dado por el usuario)
			cDivisores=0
			Para j=1 Hasta num Hacer //Por cada numero, verifica su cantidad de divisores
				res=num%j 
				
				Si (res=0) Entonces //Si el resto de la division es 0, se suma 1 al contador de divisores
					cDivisores=cDivisores+1
				FinSi
				
			FinPara
			
			Si (cDivisores<=2) Entonces //Al finalizar, Si el contador de divisores es menor o igual a 2, se guarda en el numero primo y pasa al siguiente numero
				vNum[i]=num
				i=i+1
			FinSi
			num=num+1 //Variable para pasar al siguiente numero
		FinMientras
		
		
		Escribir "Vector"
		Para i=0 Hasta tVector-1 Hacer
			Escribir Sin Saltar vNum[i], " " //Se imprime en pantalla el vectorSi (cDivisores<=2) Entonces
			vNum[i]=num
		FinPara
		
		Escribir ""
	SiNo
		Escribir "El tamaño del vector debe ser positivo"
	FinSi

FinAlgoritmo
