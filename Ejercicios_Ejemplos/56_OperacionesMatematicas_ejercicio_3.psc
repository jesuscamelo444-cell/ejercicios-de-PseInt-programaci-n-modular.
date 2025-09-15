Funcion n1 <- LeerNumero1
    Escribir "Ingrese el primer n�mero: "
    Leer n1
FinFuncion

Funcion n2 <- LeerNumero2
    Escribir "Ingrese el segundo n�mero: "
    Leer n2
FinFuncion


Funcion resultado <- Sumar(a, b)
    resultado <- a + b
FinFuncion

Funcion resultado <- Restar(a, b)
    resultado <- a - b
FinFuncion

Funcion resultado <- Multiplicar(a, b)
    resultado <- a * b
FinFuncion

Funcion resultado <- Dividir(a, b)
    Si b <> 0 Entonces
        resultado <- a / b
    SiNo
        Escribir "No se puede dividir entre cero"
        resultado <- 0
    FinSi
FinFuncion

// --- Funciones de salida ---
Funcion MostrarTexto(textoo)
    Escribir textoo
FinFuncion

Funcion MostrarResultado(nombre, valorr)
    Escribir nombre, ": ", valorr
FinFuncion



Proceso OperacionesMatematicas
	
    Definir num1, num2 Como Real
    Definir suma, resta, multi, divi Como Real
	
    num1 <- LeerNumero1
    num2 <- LeerNumero2
	
    suma <- Sumar(num1, num2)
    resta <- Restar(num1, num2)
    multi <- Multiplicar(num1, num2)
    divi <- Dividir(num1, num2)
	
    MostrarTexto("RESULTADOS")
    MostrarResultado("Suma", suma)
    MostrarResultado("Resta", resta)
    MostrarResultado("Multiplicaci�n", multi)
    MostrarResultado("Divisi�n", divi)
	
FinProceso

por si lo quieren copiar
