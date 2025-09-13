Funcion precioUnitario <- pedirPrecio
	// 1 Definir tipo de varibles
	Definir precioUnitario Como Real;
	
	// 2 tomar datos o asignacion de varibles
	Escribir " ingrese el precio Unitario:";
	Leer precioUnitario
FinFuncion

Funcion cantidad <- tomarCantidad
	Definir cantidad Como Entero;
	
	Escribir "ingrese la cantidad:";
	Leer cantidad;
	
FinFuncion

Funcion total <- calcularTotal(precioUnitario, cantidad)
	
	Definir subtotal ,iva, total Como Real;
	
	subtotal <- precioUnitario * cantidad
	iva <- subtotal * 0.18
	total <- subtotal + iva
	
	Escribir "subtotal: $" , subtotal
	Escribir "IVA (18%): $" ,iva
	Escribir "total a pagar $",total
FinFuncion


Algoritmo calcular_iva
	Definir  total ,precioUnitario Como Real;
    Definir cantidad Como Entero;
	
precioUnitario <- pedirPrecio
cantidad <- tomarCantidad

total <- calcularTotal(precioUnitario, cantidad)

FinAlgoritmo 

