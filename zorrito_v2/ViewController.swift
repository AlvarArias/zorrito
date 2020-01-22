//
//  ViewController.swift
//  zorrito_v2
//
//  Created by Alvar Arias on 2019-01-15.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit
import AVFoundation

var num = 0
var imagDisplay = ["images-2","images-3","images-4"]
var palabDisplay = ["banana","manzana","melon"]


class ViewController: UIViewController {
    
    // botones de categorias
    @IBOutlet weak var boton1: SpringButton!
    @IBOutlet weak var boton2: SpringButton!
    @IBOutlet weak var boton3: SpringButton!
    @IBOutlet weak var boton4: SpringButton!
    @IBOutlet weak var boton5: SpringButton!
    @IBOutlet weak var boton6: SpringButton!
    @IBOutlet weak var boton7: SpringButton!
    @IBOutlet weak var boton8: SpringButton!
    @IBOutlet weak var boton9: SpringButton!
    
    
    // Labels
    @IBOutlet weak var labelHome: UILabel!
    
    // imagenes Home
    @IBOutlet weak var imgZorrito: SpringImageView!
    
    // View animado
    @IBOutlet weak var viewAnim: SpringView!
    
    // Variables
    var frutas = ["pera","naranja","pera"]
    
    func apareceView() {
        imgZorrito.isHidden = false
        imgZorrito.animation = "shake"
        imgZorrito.scaleX = 1.5
        imgZorrito.scaleY = 1.5
        imgZorrito.animate()

    }
    
    func botonAparece (boton: SpringButton, animacion: String, posicionX: CGFloat, posicionY: CGFloat)
    
    {
        boton.autohide = true
        boton.animation = animacion
        boton.force = 1
        boton.delay = 1
        boton.duration = 5
        boton.velocity = 6
        boton.x = posicionX
        boton.y = posicionY
        boton.rotate = 2
        boton.curve = "spring"
        boton.animate()
    }
    
    func testVoice(fruta: String) {
        let utterance = AVSpeechUtterance( string: fruta)
        utterance.voice = AVSpeechSynthesisVoice (language: "es-SP")
        utterance.rate = 0.3
        
        let syntetizer = AVSpeechSynthesizer()
        syntetizer.speak(utterance)
        
    }
    
    
    func agrandaBoron( botonPress: SpringButton) {

        botonPress.animateToNext {
            botonPress.scaleX = 4
            botonPress.scaleY = 4
            botonPress.duration = 4.5
            botonPress.animate()
            
            // delay desaparece el boton
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                botonPress .isHidden = true
            }
        }
        
        print("botonPress")
        
        if botonPress.tag == 1  {
            testVoice(fruta: frutas[1])
        }
        
        if botonPress.tag == 2  {
            testVoice(fruta: frutas[2])
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgZorrito.isHidden = true

        // Animacion de los botones
        botonAparece(boton: boton2, animacion: "spring", posicionX: 200, posicionY: -200)
        botonAparece(boton: boton3, animacion: "wobble", posicionX: 200, posicionY: 200)
        
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
        
        // prueba voz
        testVoice(fruta: "Test fruta")
    
    }

    @IBAction func clickBoton2(_ sender: SpringButton) {
        
        print("boton2")
        agrandaBoron(botonPress: boton2)
        
    }
    
    
    @IBAction func clickBoton3(_ sender: Any) {
        
        //apareceView()
        print("boton3 ")
        agrandaBoron(botonPress: boton3)
        
    }
    

}

