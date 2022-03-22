import Foundation

class Persona 
{
    private var nombre : String
    private var domicilio : String
    private var horario : String


    var Nombre : String {
        get { return nombre }
        set { nombre = newValue }
    }

    var Domicilio : String {
        get { return domicilio }
        set { domicilio = newValue }
    }

    var Horario : String {
        get { return horario }
        set { horario = newValue }
    }

    init(_ nombre: String, _ domicilio: String, _ horario: String) {
        self.nombre = nombre
        self.domicilio = domicilio
        self.horario = horario
    }

    func asistir() -> Void{
        print("Asistiendo")
    }
}
class Empleado : Persona {
    private var jefe : String

    var Jefe : String {
        get { return jefe }
        set { jefe = newValue }
    }

    init(_ nombre: String, _ domicilio: String, _ horario: String, _ jefe: String) {
        self.jefe = jefe
        super.init(nombre, domicilio, horario)
    }

    func cobrar() -> Void{
        print("Cobrando")
    }
}

class Estudiante : Persona {
    private var grado : Int
    private var grupo : String

    var Grado : Int {
        get { return grado }
        set { grado = newValue }
    }

    var Grupo : String {
        get { return grupo }
        set { grupo = newValue }
    }

    init(_ nombre: String, _ domicilio: String, _ horario: String, _ grado: Int, _ grupo: String) {
        self.grado = grado
        self.grupo = grupo
        super.init(nombre, domicilio, horario)
    }

    func estudiar() -> Void{
        print("Estudiando")
    }
}

class Profesor : Empleado {
    private var carrera : String
    var Carrera : String {
        get { return carrera }
        set { carrera = newValue }
    }

    init(_ nombre: String, _ domicilio: String, _ horario: String, _ jefe: String, _ carrera: String) {
        self.carrera = carrera
        super.init(nombre, domicilio, horario, jefe)
    }

     func ensenar() -> Void{
         print("Ensenando")
    }
}

class Administrador : Empleado {
    private var puesto : String
    var Puesto : String {
        get { return puesto }
        set { puesto = newValue }
    }

    init(_ nombre: String, _ domicilio: String, _ horario: String, _ jefe: String, _ puesto: String) {
        self.puesto = puesto
        super.init(nombre, domicilio, horario, jefe)
    }

    func administrar() -> Void{
         print("Administrando")
    }
}


var admin = Administrador("Luis", "Av Tec", "9:45 - 15:00", "Steve", "Administrador")
var profesor = Profesor("Pedro", "Av Tec", "9:45 - 15:00", "Steve", "Sistemas")
var estudiante = Estudiante("Juan", "Av Tec", "7:00 - 12:00", 8, "A")

print("Nombre: \(admin.Nombre) Domicilio: \(admin.Domicilio) Horario: \(admin.Horario) Jefe: \(admin.Jefe) Puesto: \(admin.Puesto)");
admin.asistir();
admin.administrar();
admin.cobrar();


print("Nombre: \(profesor.Nombre) Domicilio: \(profesor.Domicilio) Horario: \(profesor.Horario) Jefe: \(profesor.Jefe) Carrera: \(profesor.Carrera)");
profesor.asistir();
profesor.ensenar();
profesor.cobrar();

print("Nombre: \(estudiante.Nombre) Domicilio: \(estudiante.Domicilio) Horario: \(estudiante.Horario) Grado: \(estudiante.Grado) Grupo: \(estudiante.Grupo)");
estudiante.asistir();
estudiante.estudiar();




