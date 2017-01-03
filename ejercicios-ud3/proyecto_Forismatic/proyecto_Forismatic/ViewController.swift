//
//  ViewController.swift
//  proyecto_Forismatic
//
//  Created by Iñaki Diaz on 2/1/17.
//  Copyright © 2017 Iñaki Diaz. All rights reserved.
//

import UIKit
import Alamofire
//problema de seguridad por no ser https
//http://stackoverflow.com/questions/32631184/the-resource-could-not-be-loaded-because-the-app-transport-security-policy-requi

import SwiftyJSON
class ViewController: UIViewController {
    
    @IBAction func botonFrase(_ sender: UIButton) {
        var json=JSON(12345)
        Alamofire.request("http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en").responseJSON { response in
            debugPrint(response)
            
            if let respuesta = response.result.value {
                print("JSON: \(respuesta)")
                json=JSON(response.result.value)
            }
            if let text = json["quoteText"].string{
                self.textoFrase.text=text
            } else {
                //Print the error
                print(json["quoteText"])
            }
            
            if let autor = json["quoteAuthor"].string{
                self.textoAutor.text=autor
            } else {
                //Print the error
                print(json["quoteAuthor"])
            }
            
            
                }
  /*      Alamofire.request("http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }*/
    }

    @IBOutlet weak var textoFrase: UITextField!
    
    @IBOutlet weak var textoAutor: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

