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
    var reproduccion = false
    
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
        txtAnimal.text="Bear"
        //if imgAnimacion.isAnimating{
          //  imgAnimacion.stopAnimating()
        //}else{
            imgAnimacion.startAnimating()
        //}
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
    
    
    
    @IBOutlet weak var imgOso: UIImageView!
    @IBOutlet weak var imgAnimacion: UIImageView!
    @IBOutlet weak var txtAnimal: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var  imagenesSecuenciaActiva : [UIImage] = []
        imagenesSecuenciaActiva.append(UIImage(named: "oso1")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso2")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso3")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso4")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso5")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso6")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso7")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso8")!)
        imagenesSecuenciaActiva.append(UIImage(named: "oso9")!)
        imgAnimacion.animationImages = imagenesSecuenciaActiva
        imgAnimacion.animationDuration = 0.7
        
        
        var imagenesOso: [UIImage] = []
        imagenesOso.append(UIImage(named: "oso1")!)
        imagenesOso.append(UIImage(named: "oso2")!)
        imagenesOso.append(UIImage(named: "oso3")!)
        imagenesOso.append(UIImage(named: "oso4")!)
        imagenesOso.append(UIImage(named: "oso5")!)
        imagenesOso.append(UIImage(named: "oso6")!)
        imagenesOso.append(UIImage(named: "oso7")!)
        imagenesOso.append(UIImage(named: "oso8")!)
        imagenesOso.append(UIImage(named: "oso9")!)
        imgOso.animationImages = imagenesOso
        imgOso.animationDuration = 0.7
        imgOso.startAnimating()
        
       
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

