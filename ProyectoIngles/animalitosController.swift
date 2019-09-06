//
//  animalitosController.swift
//  ProyectoIngles
//
//  Created by equipo on 8/27/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class animalitosController: UIViewController {
    var player : AVAudioPlayer?
    var reproduccion = true
        var  imagenesSecuenciaActiva : [UIImage] = []
    
    @IBAction func doTapPerrito(_ sender: Any) {
        txtAnimal.text="Dog"
    }
    @IBAction func doTapGatito(_ sender: Any) {
        txtAnimal.text="Cat"
    }
    @IBAction func doTapZorrito(_ sender: Any) {
        txtAnimal.text="Fox"
    }
    @IBAction func doTapTigrecito(_ sender: Any) {
        txtAnimal.text="Tiger"
    }
    @IBAction func doTapNutricita(_ sender: Any) {
        txtAnimal.text="Otter"
    }
    @IBAction func doTapMonito(_ sender: Any) {
        txtAnimal.text="Monkey"
    }
    @IBAction func doTapOsito(_ sender: Any) {
        txtAnimal.text="Gato"
        imagenesSecuenciaActiva.removeAll()
        for i in 1...9
        {
            imagenesSecuenciaActiva.append(UIImage(named: txtAnimal.text!+"\(i)")!)
        }
        imgAnimacion.animationImages = imagenesSecuenciaActiva
        
        if(imgAnimacion.isAnimating)
        {
            imgAnimacion.stopAnimating();
        }else
        {
            imgAnimacion.startAnimating()
        }
        
        if(reproduccion){
            let path = Bundle.main.path(forResource: "bear.mp3", ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{}
        }else{
            reproduccion = true
        }
        
        if player != nil {
            player?.play()
        }
    }
    @IBAction func doTapArdillita(_ sender: Any) {
        txtAnimal.text="Squirel"
    }
    @IBAction func doTapConejito(_ sender: Any) {
        txtAnimal.text="Rabbit"
    }
    
    
    
    @IBOutlet weak var txtAnimal: UILabel!
    
    @IBOutlet weak var imgPerrito: UIImageView!
    @IBOutlet weak var imgGatito: UIImageView!
    @IBOutlet weak var imgZorrito: UIImageView!
    @IBOutlet weak var imgMonito: UIImageView!
    @IBOutlet weak var imgTigrecito: UIImageView!
    @IBOutlet weak var imgNutria: UIImageView!
    @IBOutlet weak var imgOsito: UIImageView!
    @IBOutlet weak var imgArdillita: UIImageView!
    @IBOutlet weak var imgLobito: UIImageView!
    
    
    @IBOutlet weak var imgAnimacion: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        imgAnimacion.animationDuration = 0.7
        
        
        var imagenesGato: [UIImage] = []
        for i in 1...9
        {
            imagenesGato.append(UIImage(named: "Gato"+"\(i)")!)
        }
        imgGatito.animationImages = imagenesGato
        imgGatito.animationDuration = 0.7
        imgGatito.startAnimating()
        
        var imagenesPerro: [UIImage] = []
        for i in 1...9
        {
            imagenesPerro.append(UIImage(named: "Perro"+"\(i)")!)
        }
        imgPerrito.animationImages = imagenesPerro
        imgPerrito.animationDuration = 0.7
        imgPerrito.startAnimating()
        
        var imagenesZorro: [UIImage] = []
        for i in 1...9
        {
            imagenesZorro.append(UIImage(named: "Zorro"+"\(i)")!)
        }
        imgZorrito.animationImages = imagenesZorro
        imgZorrito.animationDuration = 0.7
        imgZorrito.startAnimating()
        
        var imagenesMono: [UIImage] = []
        for i in 1...9
        {
            imagenesMono.append(UIImage(named: "Mono"+"\(i)")!)
        }
        imgMonito.animationImages = imagenesMono
        imgMonito.animationDuration = 0.7
        imgMonito.startAnimating()
        
        var imagenesLobo: [UIImage] = []
        for i in 1...9
        {
            imagenesLobo.append(UIImage(named: "Lobo"+"\(i)")!)
        }
        imgLobito.animationImages = imagenesLobo
        imgLobito.animationDuration = 0.7
        imgLobito.startAnimating()
        
        var imagenesTigre: [UIImage] = []
        for i in 1...9
        {
            imagenesTigre.append(UIImage(named: "Tigre"+"\(i)")!)
        }
        imgTigrecito.animationImages = imagenesTigre
        imgTigrecito.animationDuration = 0.7
        imgTigrecito.startAnimating()
        
        var imagenesNutria: [UIImage] = []
        for i in 1...9
        {
            imagenesNutria.append(UIImage(named: "Nutria"+"\(i)")!)
        }
        imgNutria.animationImages = imagenesNutria
        imgNutria.animationDuration = 0.7
        imgNutria.startAnimating()
        
        var imagenesOso: [UIImage] = []
        for i in 1...9
        {
            imagenesOso.append(UIImage(named: "Oso"+"\(i)")!)
        }
        imgOsito.animationImages = imagenesOso
        imgOsito.animationDuration = 0.7
        imgOsito.startAnimating()
       
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

