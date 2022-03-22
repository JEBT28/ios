import Foundation

/*2.3.6. En x años a partir de ahora, Anahí será y veces mayor en edad que su
hermana Abril. Conociendo la edad actual de Abril, calcule la edad de Anahí.
*/

func calcularEdad(x: Int, y: Int) -> Int {

    let edadAbril = 12;

    let edadAnahi = edadAbril * y + x;

    return edadAnahi; 
}

var edadAnahi = calcularEdad(x:3 , y : 2);
print("Edad de Anahi en 3 años: \(edadAnahi)");

edadAnahi = calcularEdad(x:1 , y : 3);
print("Edad de Anahi en 1 año: \(edadAnahi)");

