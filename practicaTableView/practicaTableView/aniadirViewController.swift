//
//  aniadirViewController.swift
//  practicaTableView
//
//  Created by Iñaki Diaz on 4/12/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class aniadirViewController: UIViewController {
    
    var mod:Modelo?
    var tarea=Tarea()
    
  
    @IBOutlet weak var tituloTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func crearTarea(){

        if let textoTitulo=tituloTextField.text{
            tarea.titulo = textoTitulo
        }
        
        if let textoDesc=descTextField.text{
        tarea.descripcion = textoDesc
        }
        
        if let m=mod {
            m.pasarTarea(tarea: tarea)
        }
              }

    
    // el unwin debe estar en el controller destino, hay que ponerle identifier y en este controller se hace el prepare

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        crearTarea()
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        

    }
    

}
