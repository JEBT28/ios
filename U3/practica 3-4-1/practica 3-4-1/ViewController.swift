//
//  ViewController.swift
//  practica 3-4-1
//
//  Created by MAC 3 on 22/03/22.
//  Copyright © 2022 Juan Balierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcularFigura(_ sender: Any) {
        let alto:Double = Double(txtAlto.text!)!;
        let ancho:Double = Double(txtAncho.text!)!;
        let x:Double = Double(txtX.text!)!;
        let y:Double = Double(txtY.text!)!;
        
        let figura:FiguraL = FiguraL(alto,ancho,x,y);
        
        var area = figura.calcularArea()
        
        let a = figura.a;
        let b = figura.b;
        
        lblA.text = "a: \(a)";
        lblB.text = "b: \(b)";
        lblResultado.text = "Resultado: \(area)";
        
        
        
    }
    @IBAction func calcularPerimetro(_ sender: Any) {
        let alto:Double = Double(txtAlto.text!)!;
               let ancho:Double = Double(txtAncho.text!)!;
               let x:Double = Double(txtX.text!)!;
               let y:Double = Double(txtY.text!)!;
               
               let figura:FiguraL = FiguraL(alto,ancho,x,y);
               
        var perimetro = figura.calcularPerimetro();
               
               let a = figura.a;
               let b = figura.b;
               
               lblA.text = "a: \(a)";
               lblB.text = "b: \(b)";
               lblResultado.text = "Resultado: \(perimetro)";
               
               
               
    }
    
    @IBOutlet var txtAncho: UITextField!
    @IBOutlet var txtAlto: UITextField!
    @IBOutlet var txtX: UITextField!
    @IBOutlet var txtY: UITextField!
    @IBOutlet var lblA: UILabel!
    @IBOutlet var lblB: UILabel!
    @IBOutlet var lblResultado: UILabel!
    
}

