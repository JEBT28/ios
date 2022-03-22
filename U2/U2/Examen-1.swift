import Foundation

/*Una empresa requiere una clase que tenga un arreglo como atributo privado para almacenar
las ventas registradas en cada uno de los meses del año y que muestre lo siguiente:
a) Promedio de ventas
b) Valor de la venta mayor*/



class Ventas{
    private var ventas: [Double]

    var Ventas:[Double] {
        get { return ventas }
        set { ventas = newValue }
    }

    subscript(_ intNumeroMes: Int) -> Double {
        get { return ventas[intNumeroMes] }
        set { ventas[intNumeroMes] = newValue }
    }

    init(_ ventas: [Double]) {
        self.ventas = ventas
    }

    func promedioVentas() -> Double{
        var suma = ventas.reduce(0, +);
        return suma / Double(ventas.count)
    }

    func ventaMayor()-> Double {
        return ventas.max()!;
    }
}


var ventasAño:Ventas = Ventas([100.0, 200.0, 300.0, 400.0, 500.0,750.0, 152.0, 852.0, 952.0, 952.0, 952.0, 963.0])


print("Venta Mes Enero: \(ventasAño[0])")
print("Ventas: \(ventasAño.Ventas)")
print("Promedio: \(ventasAño.promedioVentas())")
print("Venta mayor: \(ventasAño.ventaMayor())")

ventasAño.Ventas = [100,100,100,100,100,100,100,100,100,100,100,100]

print("Ventas: \(ventasAño.Ventas)")
print("Promedio: \(ventasAño.promedioVentas())")
print("Venta mayor: \(ventasAño.ventaMayor())")

ventasAño[0] = 150;

print("Ventas: \(ventasAño.Ventas)")
print("Promedio: \(ventasAño.promedioVentas())")
print("Venta mayor: \(ventasAño.ventaMayor())")
