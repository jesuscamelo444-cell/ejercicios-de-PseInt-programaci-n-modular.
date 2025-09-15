Funcion valor <- tomarDatos(texto)
	Definir valor Como Real;
	Escribir texto;
	Leer valor;
FinFuncion

Funcion procesar(temperatura)

// 3 procesar datos o signar varibles
si temperatura >=15 y temperatura <=38 Entonces;
	Escribir "La temperatura es adecuada: ", temperatura, "°C"
SiNo
	Escribir "La temperatura esta fuera del rango deseado: ", temperatura,"°C!!..."
FinSi
FinFuncion

Algoritmo sin_titulo
	// Definir tipo de varibles
	Definir temperatura Como Real;
	
	// 2 tomar datos con la Funcion tomarDatos
	temperatura <- tomarDatos("Ingrese la temperatura actual (°C): ");
	
	// Proceso Y Mostrar resultados con la Funcion Mostrar resultados
	procesar(temperatura);
	
FinAlgoritmo
