Algoritmo simulaCion
	Definir piso Como Entero;
	Definir temperatura, temperaturaMaxima, temperaturaMinima como real;
	Definir mensaje como cadena;
	
	temperaturaMinima <- -10
	temperaturaMaxima <- 40
	
	// toamar datos con la funcion pedirDatos
	temperatura <- pedirDatos("Ingrese la temperatura ambiente actual C: ");
	
	// evaluar las condiciones para que el acensor se mueva con la Funcion evaluarCondiciones
	mensaje <- evaluarCondiciones(temperatura, temperaturaMaxima, temperaturaMinima);
	
	// Mostrar mensaje si puede moverse o no
	si_no_Sube(mensaje);
FinAlgoritmo

Funcion valor <- pedirDatos(texto)
	Definir valor Como Entero;
	Escribir texto;
	Leer valor;
FinFuncion

Funcion mensaje <- evaluarCondiciones(temperatura, temperaturaMaxima, temperaturaMinima)
	Definir piso Como Entero;
	Definir mensaje como cadena;
	
	si temperatura < temperaturaMinima O temperatura > temperaturaMaxima Entonces;
		
		Escribir "?? Peligro temperatura fuera de rango: ", temperatura "°C !!...";
	SiNo
		Escribir "Oprima el boton 1,2,3,4,5";
		Leer piso;
		
		si piso >=1 y piso <=5 Entonces;
			Escribir "Acensor en movimiento: ", piso "...";
		SiNo
			Escribir "Error piso inexitente: ", piso "X...";
		FinSi
	FinSi
	
FinFuncion

SubProceso si_no_Sube(mensaje)
	Escribir mensaje;
	
FinSubProceso
	