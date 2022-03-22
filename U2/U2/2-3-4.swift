import Foundation

/*2.3.4 Se tienen cuatro variables (ancho, alto, x, y), que
 describen las dimensiones de una figura en forma de L. 
 Calcule, almacene e imprima el perímetro y el área de dicha figura.
*/

func calcularPerimetro(ancho:Int, alto:Int,x:Int,y:Int) -> Int {
    return (alto * 2) + (ancho * 2)
}

func calcularArea(ancho:Int, alto:Int,x:Int,y:Int) -> Int {
    return (alto * x) + ((ancho - x) * y)
}

var ancho = 8, alto = 12, x = 4, y = 3;

print("Perimetro: \(calcularPerimetro(ancho : 8, alto : 12, x : 4, y : 3)) area: \(calcularArea(ancho : 8, alto : 12, x : 4, y : 3))")

print("Perimetro: \(calcularPerimetro(ancho : 8, alto : 4, x : 2, y : 2)) area: \(calcularArea(ancho : 8, alto : 4, x : 2, y : 2))")