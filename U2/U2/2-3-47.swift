import Foundation 
class Empleado {
    var horastrabajadas: Int
    var sueldoporhora: Double
    var Horastrabajadas: Int 
    {
        get{ return horastrabajadas }
    }

    var Sueldoporhora: Double
    {
        get{ return sueldoporhora }
    }

    func CalcularSalario() -> Double
    {
        return Double(horastrabajadas) * sueldoporhora
    }

    init(_ Horas: Int, _ Sueldo: Double)
    {
        self.horastrabajadas = Horas
        self.sueldoporhora = Sueldo
    }
}

class EmpleadoSinHorasExtra : Empleado {
    override func CalcularSalario() -> Double
    {
        return super.CalcularSalario()
    }
}

class EmpleadoConHorasDobles : Empleado {
    var Horasextra: Int 
    {
        get{return horastrabajadas - 40}
    }
    override func CalcularSalario() -> Double
    {
        return Double(horastrabajadas - Horasextra) * sueldoporhora + (Double(Horasextra) * sueldoporhora * 2)
    }
}
class EmpleadoConHorasTriples : Empleado {
    var Horasextra: Int {
        get { return horastrabajadas - 40 }
    }
    override func CalcularSalario() -> Double {
        return Double(horastrabajadas - Horasextra) * sueldoporhora + (Double(Horasextra) * sueldoporhora * 3)
    }
}



var empleado = EmpleadoSinHorasExtra(40, 2)
print("Horas extra: 0, Salario semanal: \(empleado.CalcularSalario())")

var empleadohd = EmpleadoConHorasDobles(43,2)
print("Horas extra: 0, Salario semanal: \(empleadohd.CalcularSalario())")

var empleadoht = EmpleadoConHorasTriples(46, 2)
print("Horas extra: 0, Salario semanal: \(empleadoht.CalcularSalario())")
