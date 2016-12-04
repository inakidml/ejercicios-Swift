//
//  ViewController.swift
//  practicaTableView
//
//  Created by  on 29/11/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tituloTExtField: UITextField!
    @IBOutlet weak var descTExtField: UITextField!
    
    var tarea:Tarea?
    var mod:Modelo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let t=tarea{
            tituloTExtField.text=t.titulo!
            descTExtField.text=t.descripcion!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
      // el unwin debe estar en el controller destino, hay que ponerle identifier y en este controller se hace el prepare
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let m = mod{
        m.eliminarTarea(tarea: tarea!)
        }
       
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
    }


}

