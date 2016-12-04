//
//  ViewController.swift
//  flashCards
//
//  Created by  on 25/10/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aciertos = 0
    var fallos = 0
    var numPregunta = 0
    var respondida = false
    var preguntas: [String] =  ["猫", "狗", "鱼", "Fin"]
    var respuestas:[String] = ["gato", "perro", "pez", "Fin" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        etiPregunta.text="\(preguntas[numPregunta])"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var etiPregunta: UILabel!
    @IBOutlet weak var etiRespuesta: UILabel!
    
    @IBOutlet weak var etiAciertos: UILabel!
    @IBOutlet weak var etiFallos: UILabel!
    @IBOutlet weak var botonMostrarTitle: UIButton!
    
    @IBAction func botonMostrar(_ sender: UIButton) {
        etiRespuesta.text=respuestas[numPregunta]
        respondida=true
        
    }
    
    @IBAction func botonCorrecto(_ sender: UIButton) {
        if respondida && numPregunta < 3{
            aciertos+=1
            etiAciertos.text="\(aciertos)"
            respondida=false
            numPregunta+=1
            etiRespuesta.text=""
            etiPregunta.text="\(preguntas[numPregunta])"
            
        }
        
    }
    
    
    @IBAction func botonFallo(_ sender: UIButton) {
        if respondida && numPregunta < 3{
            fallos+=1
            etiFallos.text="\(fallos)"
            respondida=false
            numPregunta+=1
            etiRespuesta.text=""
            etiPregunta.text="\(preguntas[numPregunta])"
        }
    }
}

