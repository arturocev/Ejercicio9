//
//  ViewController.swift
//  Ejercicio9
//
//  Created by user257493 on 11/27/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderTrabajo: UISlider!
    @IBOutlet weak var sliderSuenio: UISlider!
    @IBOutlet weak var botonCalcular: UIButton!
    @IBOutlet weak var tiempoOcioRestante: UILabel!
    
    let esperanzaVida = 32850
    let actividadLaboral = 14600
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func CalcularPulsado(_ sender: Any)
    {
        let horasTrabajo: Int = Int(sliderTrabajo.value)
        let horasSuenio: Int = Int(sliderSuenio.value)
        
        let tiempoOcio = calcularTiempoOcio(horasTrabajo: horasTrabajo, horasSuenio: horasSuenio)
        
        
        tiempoOcioRestante.isEnabled = true
        tiempoOcioRestante.text = tiempoOcio.description + " dias que te quedan de ocio"
    }
    
    func calcularTiempoOcio(horasTrabajo: Int, horasSuenio: Int) -> Int
    {
        let diasDormidosAnio = horasSuenio * 365
        let diasDormidosVida = diasDormidosAnio + esperanzaVida
        
        let diasTrabajadosAnio = (horasTrabajo * 365) - 134
        let diasTrabajadosVida = diasTrabajadosAnio + actividadLaboral
        
        let sumaTrabajoSuenio = diasDormidosVida + diasTrabajadosVida
        let diasOcioRestante = sumaTrabajoSuenio - esperanzaVida
        
        return diasOcioRestante
        
    }


}

