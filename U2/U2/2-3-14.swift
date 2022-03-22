import Foundation

/*
2.3.14. La función Int.random(in: mínimo…máximo) entrega un valor aleatorio,
comprendido entre mínimo y máximo. Utilice dicha función para simular que
lanza un volado con una moneda y determine si cayó águila (par) o sello (impar).
*/

let moneda = Int.random(in : 0...20 )

print("Numero: \(moneda) " + ( moneda % 2 == 0 ? "Cayó aguila" : "Cayó sello"))
