//
//  MiCeldaTableViewCell.swift
//  practicaTableView
//
//  Created by  on 29/11/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class MiCeldaTableViewCell: UITableViewCell {
    
    var tarea:Tarea?
    var id:Int?
    var titulo:String?
    var mod:Modelo?
    var principal:PrincipalTableViewController!
    
    @IBOutlet weak var etiqueta: UILabel!
    
    @IBOutlet weak var tareaRealizadaSwitch: UISwitch!
    
    @IBAction func tareaRealizadaSwitch(_ sender: Any, forEvent event: UIEvent) {
        if let m=mod{
        m.eliminarTarea(tarea: tarea!)
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(actualizarTableVIew), userInfo: nil, repeats: false)
            
            
        }
        
    }
    func botonDesactivado(){
    tareaRealizadaSwitch.setOn(false, animated: true)
    }
    func actualizarTableVIew(){
    principal.dibujarTabla()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       botonDesactivado()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
