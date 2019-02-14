//
//  ViewController.swift
//  zorrito_v2
//
//  Created by Alvar Arias on 2019-01-15.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit

var num = 0


class ViewController: UIViewController {
    
    // botones de categorias
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var boton4: UIButton!
    @IBOutlet weak var boton5: UIButton!
    @IBOutlet weak var boton6: UIButton!
    @IBOutlet weak var boton7: UIButton!
    @IBOutlet weak var boton8: UIButton!
    @IBOutlet weak var boton9: UIButton!
    
    // Labels
    @IBOutlet weak var labelHome: UILabel!
    
    // imagenes Home
    @IBOutlet weak var imgZorrito: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    // Click en cada botón
    @IBAction func clickBoton1(_ sender: Any) {
        //secciona categoria
        num=1
            print("categoria",num)
    }


}

