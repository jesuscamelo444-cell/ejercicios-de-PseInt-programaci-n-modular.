Algoritmo Tiendad
	Definir cantidad, continuar_bucle Como Entero;
	Definir precio, total, costo como real;
	
	total <- 0;
	continuar_bucle <- 1;
	
	// bucle de compras "Mientras 
	Mientras  continuar_bucle = 1 Hacer
		
		// pedir datos
		precio <- pedirDatos("Ingrese el precio del producto: ");
		cantidad <- pedirDatos("Ingrese la cantidad: ");
		
		// calcular costo
		costo <- calcularCosto(precio, cantidad);
		total <- total + costo;
		
		Escribir "El costo de este producto es: $", costo;
		
		Escribir "¿Desea comprar otro producto? (Si=1 / No=2)";
		Leer continuar_bucle;
	FinMientras
	
	// mostrar factura
	mostrarFactura(total);
FinAlgoritmo

Funcion valor <- pedirDatos(texto)
	Definir valor Como Real;
	Escribir texto;
	Leer valor;
FinFuncion

Funcion costo <- calcularCosto(precio, cantidad)
	Definir costo Como Real;
	
	costo <- precio * cantidad
	
FinFuncion

SubProceso mostrarFactura(total)
	Escribir "__________Factura__________";
	Escribir "El total de su compra es: $", total;
FinSubProceso
