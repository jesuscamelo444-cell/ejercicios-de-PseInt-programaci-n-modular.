Algoritmo SensorTemperatura2
	// Definir tipo de vairbles
	Definir temperatura, umbral Como Real;
	umbral <- 40;
	
	// pedir temperatura con la Funcion pedirDatos
	temperatura <- pedirDatos("Ingrese la temperatura actual (°C)");
	
	// evaluar temperatura con la Funcion mensaje
	mensaje <- evaluarTemperatura(temperatura, umbral);
	
	mostrarResulatados(mensaje);
	
FinAlgoritmo


Funcion valor <- pedirDatos(texto)
	Definir valor Como Real;
	Escribir texto;
	Leer valor;
FinFuncion

Funcion mensaje <- evaluarTemperatura(temperatura, umbral)
	Definir mensaje como cadena;
	
	Si temperatura > umbral Entonces
		mensaje <- "Alerta: temperatura crítica alcanzada: " + ConvertirATexto(temperatura) + "°C";
	SiNo
		mensaje <- "Temperatura estable: " + ConvertirATexto(temperatura) + "°C";
	FinSi
	
FinFuncion

SubProceso mostrarResulatados(mensaje)
	Escribir mensaje;
FinSubProceso
	