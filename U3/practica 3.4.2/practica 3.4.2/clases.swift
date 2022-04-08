//
//  clases.swift
//  practica 3.4.2
//
//  Created by Juan on 06/04/22.
//

import Foundation
protocol Figura{
    
    func calcularArea() -> Double
    func calcularVolumen() -> Double
    func calcularPerimetro() -> Double

}

class Circulo:Figura{
    
    var altura: Double!
    var radio: Double!
    
    init(_ radio:Double){
        self.radio = radio
    }
    
    init(_ radio:Double, _ altura:Double){
        self.altura = altura
        self.radio = radio
    }
    
    
    func calcularArea() -> Double {
        return pow(radio,2) * Double.pi;
    }
    
    func calcularVolumen() -> Double {
        return (pow(radio,2) * Double.pi) * altura
    }
    
    func calcularPerimetro() -> Double {
        return (radio * 2) * Double.pi
    }
}

class Cuadrado:Figura{
    
    var lado: Double!
    var altura: Double!
    
    init(_ lado: Double){
        self.lado = lado
    }
    
    
    init(_ lado: Double,_ altura: Double){
        self.lado = lado
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return lado * lado
    }
    
    func calcularVolumen() -> Double {
        return (lado * lado) * altura
    }
    
    func calcularPerimetro() -> Double {
        return lado * 4
    }
}

class Rectangulo:Figura {
   
    var largo: Double!
    var ancho: Double!
    var altura: Double!
    
    init(_ largo: Double, _ ancho: Double){
        self.largo = largo
        self.ancho = ancho
    }
    
    init(_ largo: Double, _ ancho: Double, _ altura: Double){
        self.largo = largo
        self.ancho = ancho
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return largo * ancho
    }
    
    func calcularVolumen() -> Double {
        return (largo * ancho) * altura
    }
    
    func calcularPerimetro() -> Double {
        return (largo * 2) * (ancho * 2)
    }
}

class Triangulo:Figura {
    
    var base: Double!
    var altura: Double!
    var largo: Double!
    var lado1: Double!
    var lado2: Double!
    
    init(_ base: Double, _ altura: Double){
        self.base = base
        self.altura = altura
    }
    
    init(_ base: Double,  altura: Double,  largo: Double){
        self.base = base
        self.altura = altura
        self.largo = largo
    }
    
    init(_ base: Double, lado1: Double,  lado2: Double){
        self.base = base
        self.lado1 = lado1
        self.lado2 = lado2
    }
    
    func calcularArea() -> Double {
        return (base * altura) / 2
    }
    
    func calcularVolumen() -> Double {
        return ((base * altura) / 2) * largo
    }
    
    func calcularPerimetro() -> Double {
        return base + lado1 + lado2
    }
}

class Rombo:Figura{
    var dMayor: Double!
    var dMenor: Double!
    var altura: Double!
    
    init(_ dMayor:Double, _ dMenor: Double){
        self.dMayor = dMayor
        self.dMenor = dMenor
    }
    init(_ dMayor:Double, _ dMenor: Double, _ altura: Double ){
        self.dMayor = dMayor
        self.dMenor = dMenor
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return dMenor * dMayor;
    }
    
    func calcularVolumen() -> Double {
        return (dMenor * dMayor) * altura
    }
    
    func calcularPerimetro() -> Double {
        return sqrt(pow(dMayor,2) + pow(dMenor, 2))
    }
}
