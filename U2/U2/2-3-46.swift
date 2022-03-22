import Foundation

class Vehiculo {
    var NumeroDeSerie: String
    var Marca: String
    var Anio: Int
    var Precio: Double

    init(_ NumeroDeSerie:String,_ Marca:String,_ Anio:Int,_ Precio:Double) {
        self.NumeroDeSerie = NumeroDeSerie
        self.Marca = Marca
        self.Anio = Anio
        self.Precio = Precio
    }
}

class AutoCompacto: Vehiculo {
  var Pasajeros: Int
    init(_ NumeroDeSerie:String,_ Marca:String,_ Anio:Int,_ Precio:Double,_ Pasajaros:Int){
        self.Pasajeros = Pasajaros
        super.init(NumeroDeSerie,Marca,Anio,Precio)
    }
}
class AutoLujo: Vehiculo {
    var Pasajeros: Int
    init(_ NumeroDeSerie:String,_ Marca:String,_ Anio:Int,_ Precio:Double,_ Pasajaros:Int){
        self.Pasajeros = Pasajaros
        super.init(NumeroDeSerie,Marca,Anio,Precio)
    }
}

class Camioneta: Vehiculo {
    var CapacidadCarga: Double
    var Ejes: Int
    var Rodadas: Int

    init(_ NumeroDeSerie:String,_ Marca:String,_ Anio:Int,_ Precio:Double,_ CapacidadCarga:Double,_ Ejes:Int,_ Rodadas:Int){

        self.CapacidadCarga = CapacidadCarga
        self.Ejes = Ejes
        self.Rodadas = Rodadas
        super.init(NumeroDeSerie,Marca,Anio,Precio)
    }
}
class Vagoneta: Vehiculo {
    var Pasajeros: Int
    init(_ NumeroDeSerie:String,_ Marca:String,_ Anio:Int,_ Precio:Double,_ Pasajaros:Int){
        self.Pasajeros = Pasajaros
        super.init(NumeroDeSerie,Marca,Anio,Precio)
    }
}
var al:AutoLujo = AutoLujo("JB152","GMC",2022,100152,5);
print("Auto Lujo: \(al.NumeroDeSerie) \(al.Marca) \(al.Anio) \(al.Precio) \(al.Pasajeros)")

var ac:AutoCompacto = AutoCompacto("JB152","GMC",2022,100152,5)
print("Auto Compacto: \(ac.NumeroDeSerie) \(ac.Marca) \(ac.Anio) \(ac.Precio) \(ac.Pasajeros)")

var va:Vagoneta = Vagoneta("JB152","GMC",2022,100152,5)
print("Vagoneta: \(va.NumeroDeSerie) \(va.Marca) \(va.Anio) \(va.Precio) \(va.Pasajeros)")

var ca:Camioneta = Camioneta("JB152","GMC",2022,100152,5,5,5)
print("Camioneta: \(ca.NumeroDeSerie) \(ca.Marca) \(ca.Anio) \(ca.Precio) \(ca.CapacidadCarga) \(ca.Ejes) \(ca.Rodadas)")