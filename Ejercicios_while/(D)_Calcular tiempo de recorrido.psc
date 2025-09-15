Algoritmo Calcular_tiempo_recorrodo
	// 1 Definir varibles
	Definir distancia, velocidad, tiempo, recorrido Como Real;
	Definir alternativa Como Caracter;
	Definir contador Como Entero;
	
	recorrido <- 0
	contador <- 0
	alternativa <- "s"
	
	Mientras alternativa = "s" O alternativa = "S" Hacer
		distancia <- PedirDatos("Ingrese la distancia del recorrido: ");
		velocidad <- PedirDatos("Ingrese la velocidad del recorrido: ");
		
		tiempo <- CalcularTiempo(distancia, velocidad);
		
		// Incrementar el número de viaje
		contador <- contador + 1
		
		// Mostrar el tiempo del viaje actual
		Escribir "El tiempo aproximado del viaje ", contador, " es: ", tiempo, " horas.";
		
		// Acumular
		recorrido <- recorrido + tiempo
		
		Escribir "¿Desea calcular otro viaje (S/N)? ";
		Leer alternativa;
	FinMientras
	
	// Mostrar el tiempo total acumulado
	mostrarRecorrido(recorrido, contador)
FinAlgoritmo


Funcion valor <- PedirDatos(texto)
	Definir valor Como Real;
	Escribir texto;
	Leer valor
FinFuncion


Funcion tiempo <- CalcularTiempo(distancia, velocidad)
	Definir tiempo Como Real;
	tiempo <- (distancia / velocidad)
FinFuncion


SubProceso mostrarRecorrido(recorrido, contador)
	Escribir "-----------------------------------";
	Escribir "Se realizaron ", contador, " viajes en total.";
	Escribir "El tiempo TOTAL acumulado de los viajes es: ", ConvertirATexto(recorrido), " horas.";
FinSubProceso
