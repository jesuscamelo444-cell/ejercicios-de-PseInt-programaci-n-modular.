Algoritmo Impresora_limite_papel
	Definir papel, paginas Como Entero;
	
	papel <- 100 // Capacidad de la impresora
	
	// Proceso 
	Mientras papel > 0 Hacer
		Escribir "Cantidad de papel: ", papel, " hojas disponibles";
		paginas <- pedirPaginas("�Cu�ntas p�ginas desea imprimir? ");
		papel <- imprime(papel, paginas)
	FinMientras
	
	mostrarMensajeFinal(Papel)
	
FinAlgoritmo

Funcion paginas <- pedirPaginas(texto)
	Definir paginas Como Entero;
	Escribir texto;
	Leer paginas;
FinFuncion


Funcion nuevoPapel <- imprime(papel, paginas)
	Definir nuevoPapel Como Entero;
	
	Si paginas > 0 Entonces
		Si paginas <= papel Entonces
			Escribir "Imprimiendo ", paginas, " p�ginas...";
			nuevoPapel <- papel - paginas;
		SiNo
			Escribir "? No hay suficiente papel para imprimir ", paginas, " p�ginas.";
			nuevoPapel <- papel;
		FinSi
	SiNo
		Escribir "Debe ingresar un n�mero mayor que cero.";
		nuevoPapel <- papel;
	FinSi
FinFuncion


Funcion mostrarMensajeFinal(Papel)
	Escribir "?? La impresora se ha detenido. No queda papel.";
FinFuncion
