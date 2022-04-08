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

    var figura = figuras[0]
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
        let alert = UIAlertController(title: "Calcular area: \(figura)", message: "Ingresa los sig valores", preferredStyle: .alert)

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
                let altura = Double(alert.textFields?[1].text ?? "0.0")!

                let triangulo = Triangulo(base,altura)

                let area = triangulo.calcularArea()

                self.lblResultado.text = "Base: \(base) Altura: \(altura)\nArea: \(area)"
            }

            alert.addAction(btnCalcular)

            break
        case "Circulo" :
              alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let radio = Double(alert.textFields?[0].text ?? "0.0")!


                let circulo = Circulo(radio)

                let area = circulo.calcularArea()

                self.lblResultado.text = "Radio: \(radio)\nArea: \(area)"
            }

            alert.addAction(btnCalcular)


            break
        case "Cuadrado" :
            alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Lado"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let lado = Double(alert.textFields?[0].text ?? "0.0")!

                let cuadrado = Cuadrado(lado)

                let area = cuadrado.calcularArea()

                self.lblResultado.text = "Lado: \(lado)\nArea: \(area)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rectangulo" :

            alert.addTextField{
                (txtLargo) in txtBase.placeholder = "Largo"
            }

            alert.addTextField{
                (txtAncho) in txtAltura.placeholder = "Ancho"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let largo = Double(alert.textFields?[0].text ?? "0.0")!
                let ancho = Double(alert.textFields?[1].text ?? "0.0")!

                let rect = Rectangulo(largo,ancho)

                let area = rect.calcularArea()

                self.lblResultado.text = "Largo: \(largo) Ancho: \(ancho)\nArea: \(area)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rombo" :

            alert.addTextField{
                (txtDMayor) in txtDMayor.placeholder = "Diagonal Mayor"
            }

            alert.addTextField{
                (txtDMenor) in txtDMenor.placeholder = "Diagonal Menor"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let mayor = Double(alert.textFields?[0].text ?? "0.0")!
                let menor = Double(alert.textFields?[1].text ?? "0.0")!

                let rombo = Rombo(mayor,menor)

                let area = rombo.calcularArea()

                self.lblResultado.text = "Diagonal Mayor: \(mayor) Diagonal Menor: \(menor)\nArea: \(area)"
            }

            alert.addAction(btnCalcular)

            break
        default : break
        }

        let btnCancelar = UIAlertAction(title: "Cancelar", style: .destructive)
        alert.addAction(btnCancelar)

        present(alert, animated: true)
    }


    @IBAction func CalcularPerimetro(_ sender: UIBarButtonItem){
        let alert = UIAlertController(title: "Calcular perimetro: \(figura)", message: "Ingresa los sig valores", preferredStyle: .alert)

        switch figura {
        case "Triangulo" :

            alert.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }

            alert.addTextField{
                (txtLado1) in txtLado1.placeholder = "Lado 1"
            }

            alert.addTextField{
                (txtLado2) in txtLado2.placeholder = "Lado 2"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let base = Double(alert.textFields?[0].text ?? "0.0")!
                let lado1 = Double(alert.textFields?[1].text ?? "0.0")!
                let lado2 = Double(alert.textFields?[2].text ?? "0.0")!

                let triangulo = Triangulo(base,lado1,lado2)

                let perimetro = triangulo.calcularPerimetro()

                self.lblResultado.text = "Base: \(base) Lado 1 : \(lado1) Lado 2 : \(lado2)\nPerimetro: \(perimetro)"
            }

            alert.addAction(btnCalcular)

            break
        case "Circulo" :
              alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let radio = Double(alert.textFields?[0].text ?? "0.0")!


                let circulo = Circulo(radio)

                let perimetro = circulo.calcularPerimetro()

                self.lblResultado.text = "Radio: \(radio)\nPerimetro: \(perimetro)"
            }

            alert.addAction(btnCalcular)


            break
        case "Cuadrado" :
            alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Lado"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let lado = Double(alert.textFields?[0].text ?? "0.0")!

                let cuadrado = Cuadrado(lado)

                let perimetro = cuadrado.calcularPerimetro()

                self.lblResultado.text = "Lado: \(lado)\nPerimetro: \(perimetro)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rectangulo" :

            alert.addTextField{
                (txtLargo) in txtBase.placeholder = "Largo"
            }

            alert.addTextField{
                (txtAncho) in txtAltura.placeholder = "Ancho"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let largo = Double(alert.textFields?[0].text ?? "0.0")!
                let ancho = Double(alert.textFields?[1].text ?? "0.0")!

                let rect = Rectangulo(largo,ancho)

                let perimetro = rect.calcularPerimetro()

                self.lblResultado.text = "Largo: \(largo) Ancho: \(ancho)\nPerimetro: \(perimetro)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rombo" :

            alert.addTextField{
                (txtDMayor) in txtDMayor.placeholder = "Diagonal Mayor"
            }

            alert.addTextField{
                (txtDMenor) in txtDMenor.placeholder = "Diagonal Menor"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let mayor = Double(alert.textFields?[0].text ?? "0.0")!
                let menor = Double(alert.textFields?[1].text ?? "0.0")!

                let rombo = Rombo(mayor,menor)

                let perimetro = rombo.calcularPerimetro()

                self.lblResultado.text = "Diagonal Mayor: \(mayor) Diagonal Menor: \(menor)\nPerimetro: \(perimetro)"
            }

            alert.addAction(btnCalcular)

            break
        default : break
        }

        let btnCancelar = UIAlertAction(title: "Cancelar", style: .destructive)
        alert.addAction(btnCancelar)

        present(alert, animated: true)

    }

    @IBAction func CalcularVolumen(_ sender: UIBarButtonItem){
        let alert = UIAlertController(title: "Calcular volumen: \(figura)", message: "Ingresa los sig valores", preferredStyle: .alert)

        switch figura {
        case "Triangulo" :

            alert.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }

            alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }

            alert.addTextField{
                (txtLargo) in txtLargo.placeholder = "Largo"
            }


            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let base = Double(alert.textFields?[0].text ?? "0.0")!
                let altura = Double(alert.textFields?[1].text ?? "0.0")!
                let largo = Double(alert.textFields?[2].text ?? "0.0")!

                let triangulo = Triangulo(base,altura,largo)

                let volumen = triangulo.calcularVolumen()

                self.lblResultado.text = "Base: \(base) Altura: \(altura)\nVolumen: \(volumen)"
            }

            alert.addAction(btnCalcular)

            break
        case "Circulo" :
            alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
            alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let radio = Double(alert.textFields?[0].text ?? "0.0")!
                let altura = Double(alert.textFields?[1].text ?? "0.0")!

                let circulo = Circulo(radio,altura)

                let area = circulo.calcularVolumen()

                self.lblResultado.text = "Radio: \(radio) Altura: \(altura)\nVolumen: \(volumen)"
            }

            alert.addAction(btnCalcular)


            break
        case "Cuadrado" :
            alert.addTextField{
                (txtRadio) in txtRadio.placeholder = "Lado"
            }
            alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let lado = Double(alert.textFields?[0].text ?? "0.0")!
                let altura = Double(alert.textFields?[1].text ?? "0.0")!

                let cuadrado = Cuadrado(lado,altura)

                let volumen = cuadrado.calcularVolumen()

                self.lblResultado.text = "Lado: \(lado) Altura: \(altura)\nVolumen: \(volumen)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rectangulo" :

            alert.addTextField{
                (txtLargo) in txtBase.placeholder = "Largo"
            }

            alert.addTextField{
                (txtAncho) in txtAltura.placeholder = "Ancho"
            }
             alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let largo = Double(alert.textFields?[0].text ?? "0.0")!
                let ancho = Double(alert.textFields?[1].text ?? "0.0")!
                let altura = Double(alert.textFields?[2].text ?? "0.0")!


                let rect = Rectangulo(largo,ancho,altura)

                let volumen = rect.calcularVolumen()

                self.lblResultado.text = "Largo: \(largo) Ancho: \(ancho) Altura: \(altura)\nVolumen: \(volumen)"
            }

            alert.addAction(btnCalcular)

            break
        case "Rombo" :

            alert.addTextField{
                (txtDMayor) in txtDMayor.placeholder = "Diagonal Mayor"
            }

            alert.addTextField{
                (txtDMenor) in txtDMenor.placeholder = "Diagonal Menor"
            }
             alert.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }

            let btnCalcular = UIAlertAction(title: "Calcular" , style: .default){
                _ in
                let mayor = Double(alert.textFields?[0].text ?? "0.0")!
                let menor = Double(alert.textFields?[1].text ?? "0.0")!
                let altura = Double(alert.textFields?[2].text ?? "0.0")!

                let rombo = Rombo(mayor,menor)

                let volumen = rombo.calcularVolumen()

                self.lblResultado.text = "Diagonal Mayor: \(mayor) Diagonal Menor: \(menor) Altura: \(altura)\nVolumen: \(volumen)"
            }

            alert.addAction(btnCalcular)

            break
        default : break
        }

        let btnCancelar = UIAlertAction(title: "Cancelar", style: .destructive)
        alert.addAction(btnCancelar)

        present(alert, animated: true)
    }
}

