//
//  ViewController.swift
//  practica 3.4.2
//
//  Created by Juan on 06/04/22.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pkFiguras: UIPickerView!
    @IBOutlet weak var lblResultado: UILabel!
    
    var figura = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pkFiguras.delegate = self
        pkFiguras.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return figuras.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return figuras[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        figura = figuras[row]
    }
    
    @IBAction func CalcularArea(_ sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "Calcular area : \(figura)", message: "Ingresa los sig valores", preferredStyle: .alert)
        
        
        switch figura {
        case "Triangulo" :
            
            alert.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
            
            alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
            
            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let base = Double(alert.textFields?[0].text ?? "0.0")!
                var altura = Double(alert.textFields?[1].text ?? "0.0")!
                
                let triangulo = Triangulo(base,altura)
                
                var area = triangulo.calcularArea()
                
                self.lblResultado.text = "Base: \(base) Altura: \(altura)\nArea: \(area)"
            }
            
            alert.addAction(btnCalcular)
            
            break
        case "Circulo" :
            
            break
        case "Cuadrado" :
        
            break
        case "Rectangulo" :
            
            break
        case "Rombo" :
            
            break
        default : break
        }
        
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .destructive)
        alert.addAction(btnCancelar)
        
        present(alert, animated: true)
    }
    
    
    @IBAction func CalcularPerimetro(_ sender: UIBarButtonItem){
        
    }
    
    @IBAction func CalcularVolumen(_ sender: UIBarButtonItem){
        
    }
    
}

