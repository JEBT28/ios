import Foundation

/*2.3.5. Dado un número de tres dígitos almacenado en a, calcule
aritméticamente e imprima el último digito.
*/

func obtenerUltimoDigito(numero:Int) -> Int{
    var aux = Int(String(numero).prefix(2)) ?? 0;
    aux = aux * 10
    let digito = numero - aux;
    return digito;
}

var digito = 0;

digito = obtenerUltimoDigito(numero: 123);
print("Digito: \(digito)");

digito = obtenerUltimoDigito(numero: 337);
print("Digito: \(digito)");

digito = obtenerUltimoDigito(numero: 100);
print("Digito: \(digito)");