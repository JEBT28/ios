//
//  Extensions.swift
//  imagenes
//
//  Created by user217478 on 3/28/22.
//

import Foundation
import UIKit

extension UISlider {
    
    var valueInt: Int {
        return Int(self.value);
    }
    
    var valueFormatted: String {
        return String(format: "%.2f",self.value)
    }
}

extension Float {
    
    func redondear(_ decimales: Int) -> String {
        return String(format:"%.\(decimales)f",self);
    }
    
}


extension UIImageView {
    
    func cargarImagen(_ url:String) {
     
        guard let urlImg = URL(string:url)
        else {
            return
        }
        
        DispatchQueue.main.async(execute: {
            do {
                let imageData = try Data(contentsOf: urlImg)
                let img = UIImage(data: imageData)
                self.image = img
            } catch {
                print(error.localizedDescription)
            }
        })
    }
}
extension UIImage{
    convenience init(_ url: String){
        if let urlImagen = URL(string:url){
            do{
                let imageData = try Data(contentsOf: urlImagen)
                self.init(data:imageData)!
            }
            catch{
                print(error.localizedDescription)
                self.init()
            }
        }
        else{
            self.init()
        }
    }
}
