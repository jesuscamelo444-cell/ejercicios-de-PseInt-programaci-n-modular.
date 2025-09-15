Funcion variableRetur <- toma_nombre(saludo)
	Escribir "nombre de usuario: ";
	Leer nombre
	Escribir saludo + nombre
	variableRetur = "saludo Nuevo... "
FinFuncion

Proceso hola_usuario
	Definir nombre, saludo como cadena
	saludo = "hola usuario: "
	auxvaibles = toma_nombre(saludo)
	Escribir auxvaibles
	
FinProceso
