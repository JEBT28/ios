//
//  ViewController.swift
//  imagenes
//
//  Created by user217478 on 3/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stpSemestre: UIStepper!
    @IBOutlet weak var lblSelected: UILabel!
    @IBOutlet weak var lblSemestre: UILabel!
    @IBOutlet weak var imgSelected: UIImageView!
    @IBOutlet weak var lblPromedio: UILabel!
    
    @IBOutlet weak var lblSwitch: UILabel!
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        
        lblSelected.text = "Seleccionada: \(sender.titleForSegment(at:sender.selectedSegmentIndex)!)"
    
        
        switch sender.selectedSegmentIndex {
        case 0 :
            imgSelected.image = UIImage(named: "Adidas-Logo");
        break
        case 1:
            imgSelected.image = UIImage(named: "nike-logo");

        break
        case 2 :
            imgSelected.image = UIImage(named: "puma-logo");

        break
        default :
            imgSelected.cargarImagen("https://images.unsplash.com/photo-1648405680499-ab4153bc7be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80");

        break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stepperValueChange(stpSemestre);
        //imgSelected.cargarImagen("https://images.unsplash.com/photo-1648405680499-ab4153bc7be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80")
        imgSelected.image = UIImage.init("https://images.unsplash.com/photo-1648405680499-ab4153bc7be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80")
    }

    @IBAction func stepperValueChange(_ sender: UIStepper) {
        lblSemestre.text = "Semestre: \(Int(sender.value))"
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        lblPromedio.text="Promedio: \(sender.value.redondear(0))"
    }
    @IBAction func switchValueChange(_ sender: UISwitch) {
        
        lblSwitch.text = sender.isOn ? "Es industrial" : "No es industrial"
    }
}



