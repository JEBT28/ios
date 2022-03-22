import Foundation
/*2.3.45. Diseñe un programa que calcule el área 
de las figuras geométricas señaladas en el diagrama 
UML que se muestra a continuación. Utilice 
polimorfismo para la reutilización de métodos abstractos.
*/

protocol Figura {
    func CalcularArea() -> Double
}

class Rectangulo : Figura {
    private var ancho: Double
    private var alto: Double
    var Ancho: Double {
        get {
            return ancho
        }
    }
    var Alto: Double
    {
        get {
            return alto
        }
    }
    init (_ Alto: Double, _ Ancho: Double)
    {
        self.ancho = Ancho
        self.alto = Alto
    }
    func CalcularArea() -> Double
    {
        var area = alto * ancho
        return area
    }
}
class Circunferencia : Figura
{
    private var radio: Double
    var Radio: Double
    {
        get {
            return radio
        }
    }
    init(_ Radio: Double)
    {
        self.radio = Radio
    }
    func CalcularArea() -> Double
    {
        var area = Double.pi * (radio * radio)
        return area
    }
}

class Triangulo : Figura {
    private var ancho: Double
    private var altura: Double
    var Ancho: Double
    {
        get {
            return ancho
        }
    }
    var Altura: Double
    {
        get {
            return altura
        }
    }
    init(_ Altura: Double, _ Ancho: Double)
    {
        self.altura = Altura
        self.ancho = Ancho
    }
    func CalcularArea() -> Double
    {
        var area = (altura * ancho) / 2
        return area
    }
}
var rectangulo: Rectangulo = Rectangulo(6,8)
var circunferencia: Circunferencia = Circunferencia(14)
var triangulo: Triangulo = Triangulo(4,3)
 
print("Area del rectangulo: \(rectangulo.CalcularArea())")
print("Area de la circunferencia: \( circunferencia.CalcularArea())")
print("Area del triangulo: \(triangulo.CalcularArea())")

rectangulo = Rectangulo(15,4)
circunferencia = Circunferencia(8)
triangulo = Triangulo(12,10)
 
print("Area del rectangulo: \(rectangulo.CalcularArea())")
print("Area de la circunferencia: \( circunferencia.CalcularArea())")
print("Area del triangulo: \(triangulo.CalcularArea())")

