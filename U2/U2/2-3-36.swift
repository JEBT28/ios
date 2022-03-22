import Foundation

/*2.3.36. Escriba los métodos para agregar y entregar un elemento bajo el
concepto de la estructura de dato llamada cola. Utilice el arreglo como
parámetro por referencia.
*/

func agregar(_ a: inout [String],_ new: String ) {
    a.append(new)
}

func entregar(_ a: inout [String]) -> String{
    return a.removeFirst()
}

var arr:[String] = [];

agregar(&arr,"Hola");
print(arr)
agregar(&arr,"mundo");
print(arr)

let aux = entregar(&arr);
print(arr);
print(aux);
