Funcion dato_alumno <- tomar_alumno
	Definir dato_alumno Como logico;
	dato_alumno <- Verdadero
FinFuncion

Funcion mensaje <- mostrar_mensaje(alumno)
	mensaje <- "¿Es estudiante? (verdadero/falso): " + ConvertirATexto( alumno)
FinFuncion

Funcion imprimir_mensaje(mensaje)
	Escribir mensaje
FinFuncion


Algoritmo estudiante_V_F
	Definir mensaje como cadena;
	
	alumno <- tomar_alumno()
	mensaje <- mostrar_mensaje(estudiante)
	imprimir_mensaje(mensaje)
FinAlgoritmo
