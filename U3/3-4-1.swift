/*
3.4.1. Cree una clase llamada FiguraL, con las siguientes propiedades:
• alto
• ancho
• x
• y
• a (calculada)
• b (calculada)

*/

class FiguraL {

    var alto: Double
    var ancho: Double
    var x: Double
    var y: Double

    init(_ alto: Double,_ ancho: Double,_ x: Double,_ y: Double) {
        self.alto = alto
        self.ancho = ancho
        self.x = x
        self.y = y
    }

    func calcularPerimetro() -> Double {
        return (alto * 2) + (ancho * 2)
    }

    func calcularArea() -> Double {
        return (alto * x) + ((ancho - x) * y)
    }
}

