//
//  Modelo.swift
//  practicaTableView
//
//  Created by Iñaki Diaz on 4/12/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class Modelo: NSObject {
  var tareas:[Tarea]=[]
  var tareaTemp = Tarea()
    
    func crearTarea(titulo:String, descripcion:String){
        tareaTemp.titulo=titulo
        tareaTemp.descripcion=descripcion
        tareas.append(tareaTemp)
        
    }
    func pasarTarea(tarea:Tarea){
        tareas.append(tarea)

    }
    
    func eliminarTarea(tarea:Tarea){        
    tareas.remove(at: tareas.index(of: tarea)!)
    }
    
    func reordenarTareas(from:Int, to:Int){
    tareas.insert(tareas.remove(at: from), at: to)//inserto en la posición de destino el elemento que he borrado de la posición de origen
            
    }
}
