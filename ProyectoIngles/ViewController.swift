//
//  ViewController.swift
//  ProyectoIngles
//
//  Created by Alumno on 8/27/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // - AudioPlayer Variables -
    var instrumentos : AVAudioPlayer?
    var frutas : AVAudioPlayer?
    var vehiculos : AVAudioPlayer?
    var animales : AVAudioPlayer?
    var colores : AVAudioPlayer?
    
    @IBOutlet weak var txtTemas: UILabel!
    
    // Variables img arreglos
    var imagenesInstrumentos2 : [UIImage] = []
    var imagenesFrutas2 : [UIImage] = []
    var imagenesAnimales2 : [UIImage] = []
    var imagenesColores2 : [UIImage] = []
    var imagenesVehiculos2 : [UIImage] = []
    
    // Actions
    
    @IBAction func doTapTemaSeleccionado(_ sender: Any) {
        
        if txtTemas.text == "Vehicles" {
            let transportesView = self.storyboard?.instantiateViewController(withIdentifier: "transportes") as! TransportesController
            present(transportesView, animated: true, completion: nil)
        }
        else if txtTemas.text == "Animals" {
            let animalesView = self.storyboard?.instantiateViewController(withIdentifier: "animales") as! animalitosController
            present(animalesView, animated: true, completion: nil)
        }
        else if txtTemas.text == "Instruments" {
            let intrumentosView = self.storyboard?.instantiateViewController(withIdentifier: "intrumentos") as! InstrumentosController
            present(intrumentosView, animated: true, completion: nil)
        }
        else if txtTemas.text == "Colors" {
            let coloresView = self.storyboard?.instantiateViewController(withIdentifier: "colores") as! ViewControllerColorcitos
            present(coloresView, animated: true, completion: nil)
        }
        else if txtTemas.text == "Fruits" {
            let frutasView = self.storyboard?.instantiateViewController(withIdentifier: "frutas") as! FrutasController
            present(frutasView, animated: true, completion: nil)
        } 
        
    }
    
    
    @IBAction func DoTapVehiculos(_ sender: Any) {
        for i in 1...11 {
            imagenesVehiculos2.append(UIImage(named : "VehiclesVG" + "\(i)")!)
        }
        imgAnimacionGrande.animationImages = imagenesVehiculos2
        imgAnimacionGrande.animationDuration = 2.2
        imgAnimacionGrande.startAnimating()
        txtTemas.text = "Vehicles"
    }
    @IBAction func DoTapAnimales(_ sender: Any) {
        for i in 1...11 {
            imagenesAnimales2.append(UIImage(named : "Animals" + "\(i)")!)
        }
        imgAnimacionGrande.animationImages = imagenesAnimales2
        imgAnimacionGrande.animationDuration = 2.2
        imgAnimacionGrande.startAnimating()
        txtTemas.text = "Animals"
    }
    @IBAction func DoTapInstrumentos(_ sender: Any) {
        for i in 0...9 {
            imagenesInstrumentos2.append(UIImage(named : "MenuInstrumentos2_" + "\(i)")!)
        }
        imgAnimacionGrande.animationImages = imagenesInstrumentos2
        imgAnimacionGrande.animationDuration = 2.2
        imgAnimacionGrande.startAnimating()
        txtTemas.text = "Instruments"
    }
    @IBAction func DoTapColores(_ sender: Any) {
        for i in 1...14 {
            imagenesColores2.append(UIImage(named : "Colors" + "\(i)")!)
        }
        imgAnimacionGrande.animationImages = imagenesColores2
        imgAnimacionGrande.animationDuration = 2.2
        imgAnimacionGrande.startAnimating()
        txtTemas.text = "Colors"
    }
    @IBAction func DoTapFrutas(_ sender: Any) {
        for i in 0...14 {
            imagenesFrutas2.append(UIImage(named : "menuFrutas" + "\(i)")!)
        }
        imgAnimacionGrande.animationImages = imagenesFrutas2
        imgAnimacionGrande.animationDuration = 2.2
        imgAnimacionGrande.startAnimating()
        txtTemas.text = "Fruits"
    }
    
    
    @IBOutlet weak var imgVehiculos: UIImageView!
    @IBOutlet weak var imgAnimales: UIImageView!
    @IBOutlet weak var imgInstrumentos: UIImageView!
    @IBOutlet weak var imgColores: UIImageView!
    @IBOutlet weak var imgFrutas: UIImageView!
    @IBOutlet weak var imgAnimacionGrande: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MusicPlayer.shared.startBackgroundMusic()
        
        var imagenesInstrumentos : [UIImage] = []
        var imagenesFrutas : [UIImage] = []
        var imagenesVehiculos: [UIImage] = []
        var imagenesAnimales : [UIImage] = []
        var imagenesColores : [UIImage] = []
        
        // - Llenado de los 19 Arreglos con sus frames -
        // Instrumentos
        for i in 1...10 {
            imagenesInstrumentos.append(UIImage(named : "MenuInstrumentos" + "\(i)")!)
        }
        
        imgInstrumentos.animationImages = imagenesInstrumentos
        imgInstrumentos.animationDuration = 2.2
        imgInstrumentos.startAnimating()
        
        // Frutas
        for i in 0...44 {
            imagenesFrutas.append(UIImage(named : "fruits" + "\(i)")!)
        }
        
        imgFrutas.animationImages = imagenesFrutas
        imgFrutas.animationDuration = 2.2
        imgFrutas.startAnimating()
       
    
        //Animales
        for i in 1...8 {
            imagenesAnimales.append(UIImage(named : "Animales" + "\(i)")!)
        }
        
        imgAnimales.animationImages = imagenesAnimales
        imgAnimales.animationDuration = 2.2
        imgAnimales.startAnimating()
        
        //Colores
        for i in 0...9 {
            imagenesColores.append(UIImage(named : "Colores" + "\(i)")!)
        }
        
        imgColores.animationImages = imagenesColores
        imgColores.animationDuration = 2.2
        imgColores.startAnimating()
       
        //Transportes
        for i in 1...9 {
            imagenesVehiculos.append(UIImage(named : "Vehiculos0" + "\(i)")!)
        }
        for i in 10...18 {
            imagenesVehiculos.append(UIImage(named : "Vehiculos" + "\(i)")!)
        }
        
        imgVehiculos.animationImages = imagenesVehiculos
        imgVehiculos.animationDuration = 2.2
        imgVehiculos.startAnimating()
    
    }

}
