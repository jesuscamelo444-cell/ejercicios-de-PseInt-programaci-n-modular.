Funcion dato_valor <- tomara_valor
	Definir dato_valor Como Real;
	dato_valor <- 3.99
FinFuncion

Funcion mensaje <- procesar_mensaje(valor)
	mensaje <- "El precio del arroz es de: " + ConvertirATexto(valor)
FinFuncion

Funcion imprimir_mensaje(mensaje)
	Escribir mensaje
FinFuncion

Algoritmo precio_de_un_producto
	Definir precio Como Real;
	
	valor <- tomara_valor()
	mensaje <- procesar_mensaje(valor)
	imprimir_mensaje(mensaje)
	
FinAlgoritmo
