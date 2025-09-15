Algoritmo Cajero_automatico
	// 1 definir variables
	Definir saldo, retiro Como Real;
	Definir mensaje Como Cadena;
	
	saldo <- 1000000;
	
	Escribir "___ BIENVENIDO AL CAJERO AUTOMÁTICO ___";
	Escribir "Su saldo actual es de: $", saldo;
	
	// 1. pedir monto
	retiro <- pedirMonto("Ingrese el monto que desea retirar: ");
	
	// 2. procesar retiro
	mensaje <- procesarRetiro(saldo, retiro);
	
	// 3. mostrar resultado
	mostrarResultado(mensaje);
FinAlgoritmo


Funcion valor <- pedirMonto(texto)
	Definir valor Como Real;
	Escribir texto;
	Leer valor;
FinFuncion


Funcion mensaje <- procesarRetiro(saldo, retiro)
	Definir mensaje Como Cadena;
	
	Si retiro > saldo Entonces
		mensaje <- "? Error: saldo insuficiente. Su saldo actual es de $" + ConvertirATexto(saldo);
	SiNo
		saldo <- saldo - retiro;
		mensaje <- "? Retiro exitoso. Usted retiró $" + ConvertirATexto(retiro) + " | Saldo restante: $" + ConvertirATexto(saldo);
	FinSi
FinFuncion


SubProceso mostrarResultado(mensaje)
	Escribir mensaje;
FinSubProceso

