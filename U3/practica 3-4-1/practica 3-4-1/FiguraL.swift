//
//  FiguraL.swift
//  practica 3-4-1
//
//  Created by MAC 3 on 22/03/22.
//  Copyright © 2022 Juan Balierrez. All rights reserved.
//

public class FiguraL{
    
    var alto:Double
    var ancho:Double
    var x:Double
    var y:Double
    
    var a:Double
    var b:Double
    
    init(_ alto:Double,_ ancho:Double,_ x:Double,_ y:Double){
        self.alto = alto;
        self.ancho = ancho;
        self.x = x;
        self.y = y;
        self.a = ancho - x
        self.b = alto - y
    }
    
    func calcularPerimetro() -> Double {
        return alto + ancho + x + y + a + b
    }

    func calcularArea() -> Double {
        return (alto * x) + ((ancho - x) * y)
    }
    
    
}
