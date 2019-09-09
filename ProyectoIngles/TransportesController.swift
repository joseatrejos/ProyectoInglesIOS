//
//  TransportesController.swift
//  ProyectoIngles
//
//  Created by Alumno on 02/09/19.
//  Copyright © 2019 Fer. All rights reserved.
//
import Foundation
import UIKit

import AVFoundation

class TransportesController : UIViewController{
    
    //-----View Principal Transportes y Label---
    @IBOutlet weak var imgSecuenciaPrincipal: UIImageView!
    @IBOutlet weak var txtNombres: UILabel! //Label etiqueta
    
    //===================== UI IMAGES =======================
    //UI IMAGE Carro
    @IBOutlet weak var ImgCarro: UIImageView!
    //UI IMAGE Tren
    @IBOutlet weak var imgTren: UIImageView!
    //UI IMAGE Avion
    @IBOutlet weak var imgAvion: UIImageView!
    //UI IMAGE Barco
    @IBOutlet weak var imgBarco: UIImageView!
    //UI IMAGE Motocicleta
    @IBOutlet weak var imgMotocicleta: UIImageView!
    //UI IMAGE Trailer
    @IBOutlet weak var imgTrailer: UIImageView!
    //UI IMAGE Bicicleta
    @IBOutlet weak var imgBicicleta: UIImageView!
    //UI IMAGE Bus
    @IBOutlet weak var imgBus: UIImageView!
    //UI IMAGE Helicoptero
    @IBOutlet weak var imgHelicoptero: UIImageView!
    
    
    var player : AVAudioPlayer?
    //===VARIABLE REPRODUCCION==
    var reproduccion = true
    
    
    
    //==================INICIALIZACION DE TAP'S========================
    //=== CARRO ===
    @IBAction func doTapTransporte1(_ sender: Any) {
        
        txtNombres.text = "Car"
        
        var imagenesSecuenciaCarroPrincipal : [UIImage] = []
        imagenesSecuenciaCarroPrincipal.removeAll()
        
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG1.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG2.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG3.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG4.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG5.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG6.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG7.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoVG8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaCarroPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.0
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "car.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
        
    }
    
    //=====TREN=====
    @IBAction func doTapTransporteTren(_ sender: Any) {
        
        txtNombres.text = "Train"
        
        var imagenesSecuenciaTrenPrincipal : [UIImage] = []
        imagenesSecuenciaTrenPrincipal.removeAll()
        
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG1.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG2.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG3.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG4.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG5.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG6.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG7.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "TrenVG8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaTrenPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.9
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "train.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====AVION====
    @IBAction func doTapTransporteAvion(_ sender: Any) {
        
        txtNombres.text = "Airplane"
        
        var imagenesSecuenciaAvionPrincipal : [UIImage] = []
        imagenesSecuenciaAvionPrincipal.removeAll()
        
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG0.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG1.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG2.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG3.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG4.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG5.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG6.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG7.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG8.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG9.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG10.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AvionVG11.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaAvionPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.1
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "airplane.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    
    
    //====BARCO====
    @IBAction func doTapTransporteBarco(_ sender: Any) {
        
        txtNombres.text = "Sailboat"
        
        var imagenesSecuenciaBarcoPrincipal : [UIImage] = []
        imagenesSecuenciaBarcoPrincipal.removeAll()
        
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG0.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG01.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG02.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG03.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG04.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG05.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG06.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG07.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG08.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG09.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG10.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG11.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG12.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG13.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "BarcoVG14.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBarcoPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.3
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "sailboat.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====MOTOCICLETA====
    @IBAction func doTapTransporteMotocicleta(_ sender: Any) {
        
        txtNombres.text = "Motorcycle"
        
        var imagenesSecuenciaMotocicletaPrincipal : [UIImage] = []
        imagenesSecuenciaMotocicletaPrincipal.removeAll()
        
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG1.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG2.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG3.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG4.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG5.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG6.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG7.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "MotoVG8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaMotocicletaPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.4
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "motorcycle.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====TRAILER====
    @IBAction func doTapTransporteTrailer(_ sender: Any) {
        
        txtNombres.text = "Truck"
        
        var imagenesSecuenciaTrailerPrincipal : [UIImage] = []
        imagenesSecuenciaTrailerPrincipal.removeAll()
        
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG00.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG01.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG02.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG03.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG04.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG05.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG06.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG07.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG08.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG09.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG10.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamionVG11.png")!)
        
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaTrailerPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.3
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "truck.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====BICICLETA====
    @IBAction func doTapTransporteBicicleta(_ sender: Any) {
        
        txtNombres.text = "Bicycle"
        
        var imagenesSecuenciaBicicletaPrincipal : [UIImage] = []
        imagenesSecuenciaBicicletaPrincipal.removeAll()
        
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG00.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG01.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG02.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG03.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG04.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG05.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG06.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG07.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG08.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "biciVG09.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBicicletaPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.0
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "bicycle.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====BUS====
    @IBAction func doTapTransporteBus(_ sender: Any) {
        
        txtNombres.text = "Bus"
        
        var imagenesSecuenciaBusPrincipal : [UIImage] = []
        imagenesSecuenciaBusPrincipal.removeAll()
        
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG0.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG1.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG2.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG3.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG4.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG5.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG6.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG7.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG8.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG9.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG10.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG11.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "busVG12.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBusPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.3
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "bus.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //====HELICOPTERO====
    @IBAction func doTapTransporteHelicoptero(_ sender: Any) {
        
        txtNombres.text = "Helicopter"
        
        var imagenesSecuenciaHelicopteroPrincipal : [UIImage] = []
        imagenesSecuenciaHelicopteroPrincipal.removeAll()
        
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG0.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG1.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG2.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG3.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG4.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG5.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG6.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG7.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG8.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG9.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG10.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroVG11.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaHelicopteroPrincipal
        imgSecuenciaPrincipal.animationDuration = 1.5
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        //====AUDIO===
        if(reproduccion){
            
            let path = Bundle.main.path(forResource: "helicopter.mp3" , ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{
                
            }
            
        }else{
            
            reproduccion = true
            
        }
        
        if (player != nil) {
            
            player?.play()
            
        }
        
    }
    
    //=======================================================================
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Animacion Vehiculos
        var imagenesSecuenciaVehiculos : [UIImage] = []
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG1.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG2.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG3.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG4.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG5.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG6.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG7.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG8.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG9.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG10.png")!)
        imagenesSecuenciaVehiculos.append(UIImage(named: "VehiclesVG11.png")!)
        
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaVehiculos
        imgSecuenciaPrincipal.animationDuration = 3.0
        imgSecuenciaPrincipal.startAnimating()
        
        
        
        //Animacion CARRO
        var imagenesSecuenciaCarro : [UIImage] = []
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM8.png")!)
        
        ImgCarro.animationImages = imagenesSecuenciaCarro
        ImgCarro.animationDuration = 0.7
        ImgCarro.startAnimating()
        
        
        
        //ANIMACION TREN
        var imagenesSecuenciaTren : [UIImage] = []
        imagenesSecuenciaTren.append(UIImage(named: "TrenM1.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM2.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM3.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM4.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM5.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM6.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM7.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "TrenM8.png")!)
        
        imgTren.animationImages = imagenesSecuenciaTren
        imgTren.animationDuration = 0.8
        imgTren.startAnimating()
        
        
        //ANIMACION AVION
        var imagenesSecuenciaAvion : [UIImage] = []
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM100.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM101.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM102.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM103.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM104.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM105.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM106.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM107.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM108.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM109.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM110.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AvionM111.png")!)
        
        imgAvion.animationImages = imagenesSecuenciaAvion
        imgAvion.animationDuration = 1.0
        imgAvion.startAnimating()
        
        
        
        
        //ANIMACION BARCO
        var imagenesSecuenciaBarco : [UIImage] = []
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM00.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM01.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM02.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM03.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM04.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM05.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM06.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM07.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM08.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM09.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM10.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM11.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM12.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM13.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM14.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM15.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM16.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "BarcoM17.png")!)
        
        
        imgBarco.animationImages = imagenesSecuenciaBarco
        imgBarco.animationDuration = 2.0
        imgBarco.startAnimating()
        
        
        //ANIMACION MOTOCICLETA
        var imagenesSecuenciaMotocicleta : [UIImage] = []
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM1.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM2.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM3.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM4.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM5.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM6.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM7.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "MotoM8.png")!)
        
        imgMotocicleta.animationImages = imagenesSecuenciaMotocicleta
        imgMotocicleta.animationDuration = 0.9
        imgMotocicleta.startAnimating()
        
        
        //ANIMACION TRAILER
        var imagenesSecuenciaTrailer : [UIImage] = []
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM00.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM01.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM02.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM03.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM04.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM05.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM06.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM07.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM08.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM09.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM10.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamionM11.png")!)
        
        
        imgTrailer.animationImages = imagenesSecuenciaTrailer
        imgTrailer.animationDuration = 0.8
        imgTrailer.startAnimating()
        
        
        //ANIMACION BICICLETA
        var imagenesSecuenciaBicicleta : [UIImage] = []
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM00.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM01.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM02.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM03.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM04.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM05.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM06.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM07.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM08.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM09.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM10.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM11.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM12.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "biciM13.png")!)
        
        
        imgBicicleta.animationImages = imagenesSecuenciaBicicleta
        imgBicicleta.animationDuration = 1.0
        imgBicicleta.startAnimating()
        
        
        //ANIMACION BUS
        var imagenesSecuenciaBus : [UIImage] = []
        imagenesSecuenciaBus.append(UIImage(named: "busM20.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM21.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM22.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM23.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM24.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM25.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM26.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "busM27.png")!)
        
        imgBus.animationImages = imagenesSecuenciaBus
        imgBus.animationDuration = 0.8
        imgBus.startAnimating()
        
        
        //ANIMACION HELICOPTERO
        var imagenesSecuenciaHelicoptero : [UIImage] = []
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM00.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM01.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM02.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM03.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM04.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM05.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM06.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM07.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM08.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM09.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM10.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM11.png")!)
        
        imgHelicoptero.animationImages = imagenesSecuenciaHelicoptero
        imgHelicoptero.animationDuration = 1.5
        imgHelicoptero.startAnimating()
        
        
    }
    
    
}
