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
            imgSelected.image = UIImage();

        break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stepperValueChange(stpSemestre);
    }

    @IBAction func stepperValueChange(_ sender: UIStepper) {
        lblSemestre.text = "Semestre: \(Int(sender.value))"
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        lblPromedio.text="Promedio: \(String(format:"%.2f",sender.value))"
    }
}

