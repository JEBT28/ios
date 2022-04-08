//
//  ViewController.swift
//  alertController
//
//  Created by Juan on 05/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblAction: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertaBasica(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Error", message: "El archivo ya existe\nDesea reemplazar?", preferredStyle: .alert)
        
        let btnSi = UIAlertAction(title:"Si",style: .destructive)
        {
            _ in
            self.lblAction.text = "Presiono si"
        }
        
        let btnNo = UIAlertAction(title:"No",style: .cancel, handler: {
            action in self.lblAction.text = "Presiono no"
        })
                
        let btnIndefinido = UIAlertAction(title:"Indefinido",style: .default){
            
            (accion:UIAlertAction) in self.lblAction.text = "Presiono el boton\(accion.title!)"
        }
        
        alerta.addAction(btnSi)
        alerta.addAction(btnNo)
        alerta.addAction(btnIndefinido)
        self.present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func alertaTexto(_ sender: UIBarButtonItem) {
    
        let alerta = UIAlertController(title: "Login", message: "Inicio de sesion?", preferredStyle: .alert)
        
        alerta.addTextField{
            (txtCorreo) in txtCorreo.placeholder = "Correo"
        }
        alerta.addTextField{
            (txtContraseña) in txtContraseña.placeholder = "Contraseña"
            txtContraseña.isSecureTextEntry = true
        }
        
        
        	
        let btnCancel = UIAlertAction(title:"Cancelar",style: .cancel)
        {
            _ in
            self.lblAction.text = "Presiono cancel"
        }
        
        let btnLoggear = UIAlertAction(title:"Iniciar sesion",style: .default)
        {
            _ in
            
            let correo = alerta.textFields![0].text!
            let pass = alerta.textFields![1].text!
            self.lblAction.text = "correo: \(correo)  contraseña: \(pass)"
        }
        
        alerta.addAction(btnCancel)
        alerta.addAction(btnLoggear)
        self.present(alerta, animated: true, completion: nil)
        
    }
    
    @IBAction func alertaOpciones(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title:"Compartir",message: "Selecciona una red social",preferredStyle: .actionSheet)
        
        
        let btnCancel = UIAlertAction(title:"Cancelar",style: .cancel)
        {
            _ in
            self.lblAction.text = "Presiono cancel"
        }
        
        
        let btnFacebook = UIAlertAction(title:"Facebook",style: .default)
        {
            _ in
            self.lblAction.text = "Presiono Facebook"
        }
        let btnTwitter = UIAlertAction(title:"Twitter",style: .default)
        {
            _ in
            self.lblAction.text = "Presiono Twitter"
        }
        
        let btnInstagram = UIAlertAction(title:"Instagram",style: .default)
        {
            _ in
            self.lblAction.text = "Presiono Instagram"
        }
        
        alerta.addAction(btnCancel);
        alerta.addAction(btnFacebook);
        alerta.addAction(btnTwitter);
        alerta.addAction(btnInstagram);
        
        self.present(alerta, animated: true, completion: nil)
    }
}

