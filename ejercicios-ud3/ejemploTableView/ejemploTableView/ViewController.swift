//
//  ViewController.swift
//  ejemploTableView
//
//  Created by  on 29/11/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var posicion: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let p = posicion {
        etiqueta.text="Has seleccionado \(p)"
        }else{
        etiqueta.text=":("
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var etiqueta: UILabel!

}

