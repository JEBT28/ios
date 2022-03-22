import Foundation

/*2.3.35. Una pila es una estructura de datos (arreglo unidimensional), que
puede realizar lo siguiente:
• Agregar un elemento al principio del arreglo
• Obtener el valor del primer elemento del arreglo
• Entregar el primer elemento del arreglo y removerlo (sacarlo de la pila)
Debe crear un método para cada operación descrita anteriormente, mismas que
deberán trabajar sobre un arreglo pasado como parámetro por referencia.
*/

func agregar(_ a: inout [String],_ new: String ) {
    a = [new] + a 
}

func entregar(_ a: inout [String]) -> String{
    return a.removeFirst()
}

func primero(_ a: inout [String]) -> String{
    return a.first!
}


var arr:[String] = []

agregar(&arr,"mundo");
print(arr)

agregar(&arr,"Hola");
print(arr)

var uno = primero(&arr);
print(uno)
print(arr)

var removido = entregar(&arr);
print(removido)
print(arr)