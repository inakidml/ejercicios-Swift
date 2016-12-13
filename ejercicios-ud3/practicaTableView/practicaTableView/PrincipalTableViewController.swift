//
//  PrincipalTableViewController.swift
//  practicaTableView
//
//  Created by  on 29/11/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class PrincipalTableViewController: UITableViewController {
    
    let mod=Modelo()
    
    @IBOutlet weak var contadorTareas: UILabel!
    @IBAction func botonAdd(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        mod.crearTarea(titulo: "unaTareaPrueba", descripcion: "descripción de la tarea de prueba")
        contadorTareas.text="nº tareas: \(mod.tareas.count)"
        //Botón para editar
        self.navigationItem.leftBarButtonItem = self.editButtonItem
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return  mod.tareas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaTarea", for: indexPath) as! MiCeldaTableViewCell

        // Configure the cell...
        cell.botonDesactivado()
        cell.id=indexPath.row
        cell.tarea=mod.tareas[cell.id!]
        cell.etiqueta.text=cell.tarea?.titulo
        cell.mod=mod
        cell.principal=self 
        return cell
    }
    // el unwin debe estar en el controller destino (viene desde vista añadir)
    @IBAction func saveTareaDetail(segue:UIStoryboardSegue) {
        dibujarTabla()
    }
    //unwin para eliminar (viene desde vista detalle)
    @IBAction func eraseTareaDetail(segue:UIStoryboardSegue) {
       dibujarTabla()
    }
    //Función para recargar la tabla el contador de tareas
    func dibujarTabla(){
        tableView.reloadData()
        contadorTareas.text="nº tareas: \(mod.tareas.count)"
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 
*/
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            // Delete the row from the data source
            mod.tareas.remove(at: indexPath.row)//Borramos antes de eliminar filas del tableview, si no, casca
            tableView.deleteRows(at: [indexPath], with: .fade)
            dibujarTabla() // por actualizar el número de tareas
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

        
        
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        mod.reordenarTareas(from: fromIndexPath.row, to: to.row)
        dibujarTabla()

    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if( segue.identifier == "segueAniadir") {
            let destino = segue.destination as! aniadirViewController           
            destino.mod=mod //pasamos la referencia del modelo a la vista añadir
        }
        if( segue.identifier == "segueDetalle") {
            let destino = segue.destination as! ViewController
            let emisor = sender as! MiCeldaTableViewCell
            //destino.tarea=mod.tareas[emisor.id!]
            destino.tarea=emisor.tarea //pasamos a la vista detalle la tarea desde la celda emisor
            destino.mod=mod            //tambien pasamos el modelo, por si la eliminamos desde allíu
        }

    }

}
