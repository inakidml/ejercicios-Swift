//
//  ViewController.swift
//  HolaMundo
//
//  Created by  on 13/9/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var etiqueta: UILabel!

    @IBAction func botonPulsado(_ sender: AnyObject) {
        
        etiqueta.text = "¡Hola Mundo!"
    }
    @IBAction func botonBorrar(_ sender: AnyObject) {
        
        etiqueta.text = ""
        
    }
}

