Algoritmo _13_Arreeglos_Matrices
	Definir i, j, matriz, n, num, suma, sumaD, sumaV Como Entero
	Escribir "Ingresar el tamaño de la matriz cuadrada"
	Hacer
		Leer n
	Mientras Que (n > 10)
	Dimension matriz(n, n)
	
	Para i = 0 Hasta (n-1)
		Para j = 0 Hasta (n-1)
			Hacer
				Escribir "Ingresar número para [" i "," j "]"
				Leer num
				matriz(i, j) = num
			Mientras Que (num > 9) o (num < 0)
		FinPara
	FinPara
	suma = 0
	sumaD= 0
	sumaV= 0
	Para i = 0 Hasta (n-1)
		Para j = 0 Hasta (n-1)
			si i = j Entonces
				sumaD= sumaD + matriz(i,j)
			FinSi
				suma = suma + (matriz(i,j))
		FinPara
		Escribir "La suma " i " es " suma
		suma = suma - suma
	FinPara
	Escribir "La suma diagonal es " sumaD
	
	
	Para j = 0 Hasta (n-1)
		Para i = 0 Hasta (n-1)
			sumaV = sumaV + matriz(i,j)
		FinPara
		Escribir "La suma vertical " j " es " sumaV
		sumaV = sumaV -sumaV
	FinPara

FinAlgoritmo

//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas)
//que tiene como propiedad especial que la suma de las filas, las columnas y las
//diagonales es igual. Por ejemplo:
	//2 7 6
	//9 5 1
	//4 3 8
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir
//un algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso
//de que sea mágica escribir la suma. Además, el programa deberá comprobar que los
//números introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el
//tamaño de la matriz que no debe superar orden igual a 10. 