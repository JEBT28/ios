//
//  ViewController.swift
//  PickerView2
//
//  Created by user217478 on 3/31/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pkvColores: UIPickerView!
    
    let arreglo = [
        ["1","3","5"],
        ["2","4","6","8"],
        ["A","E"],
        ["B","C","D"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pkvColores.delegate = self
        pkvColores.dataSource = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        //return arreglo.count
    }
    //Cantidad de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
        //return arreglo[component].count
    }
    //Datos del pickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    //Mostrar seleccion
    func pickerView(_ pickerView: UIPickerView, didSelectRow row:Int, inComponent component:Int){
        switch row{
        case 0: pkvColores.backgroundColor = UIColor.white
        case 1: pkvColores.backgroundColor = UIColor.green
        case 2: pkvColores.backgroundColor = UIColor.blue
        case 3: pkvColores.backgroundColor = UIColor.yellow
        case 4: pkvColores.backgroundColor = UIColor.red
        default: pkvColores.backgroundColor = UIColor.clear
        }
    }
}

