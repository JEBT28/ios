import Foundation

/*2.3.44. Hay una pared rectangular que tiene una ventana rectangular; se
requiere un programa que dadas las dimensiones (largo y ancho) de la ventana
y de la pared, imprima los minutos necesarios para pintar la pared, sabiendo
que se puede pintar 1 m² en 10 minutos. Utilice la siguiente clase:
*/

class Rectangulo {
    private var largo: Double
    private var ancho: Double

    var Largo: Double {
        get {
            return largo
        }
    }

    var Ancho: Double
    {
        get {
            return ancho
        }
    }

    func calcularArea() -> Double {
        return Largo * Ancho
    }

    init(_ Largo: Double, _ Ancho: Double) {
        self.largo = Largo;
        self.ancho = Ancho 
    }
}


var pared: Rectangulo = Rectangulo(10, 5);
var ventana: Rectangulo = Rectangulo(2,1);
var minutos = ((pared.calcularArea() - ventana.calcularArea()) * 10);
print(minutos)


pared = Rectangulo(3, 3);
ventana = Rectangulo(1,1);
minutos = ((pared.calcularArea() - ventana.calcularArea()) * 10);

print(minutos)












