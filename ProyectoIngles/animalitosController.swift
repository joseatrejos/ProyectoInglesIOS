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
            let path = Bundle.main.path(forResource: "dog.mp3", ofType: nil)
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
    
    @IBAction func doTapGatito(_ sender: Any) {
        txtAnimal.text="Cat"
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
            let path = Bundle.main.path(forResource: "cat.mp3", ofType: nil)
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
    
    @IBAction func doTapZorrito(_ sender: Any) {
        txtAnimal.text="Fox"
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
            let path = Bundle.main.path(forResource: "fox.mp3", ofType: nil)
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
    
    @IBAction func doTapTigrecito(_ sender: Any) {
        txtAnimal.text="Tiger"
        imagenesSecuenciaActiva.removeAll()
        for i in 1...8
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
            let path = Bundle.main.path(forResource: "tiger.mp3", ofType: nil)
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
    
    @IBAction func doTapNutricita(_ sender: Any) {
        txtAnimal.text="Otter"
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
            let path = Bundle.main.path(forResource: "otter.mp3", ofType: nil)
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
    
    @IBAction func doTapMonito(_ sender: Any) {
        txtAnimal.text="Monkey"
        imagenesSecuenciaActiva.removeAll()
        for i in 1...8
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
            let path = Bundle.main.path(forResource: "monkey.mp3", ofType: nil)
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
    
    @IBAction func doTapOsito(_ sender: Any) {
        txtAnimal.text="Bear"
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
        txtAnimal.text="Squirrel"
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
            let path = Bundle.main.path(forResource: "squirrel.mp3", ofType: nil)
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
  
    @IBAction func doTapLobito(_ sender: Any) {
        txtAnimal.text="Wolf"
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
            let path = Bundle.main.path(forResource: "wolf.mp3", ofType: nil)
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
        imgZorrito.animationDuration = 1.8
        imgZorrito.startAnimating()
        
        var imagenesMono: [UIImage] = []
        for i in 1...8
        {
            imagenesMono.append(UIImage(named: "Mono"+"\(i)")!)
        }
        imgMonito.animationImages = imagenesMono
        imgMonito.animationDuration = 1.8
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
        for i in 1...8
        {
            imagenesTigre.append(UIImage(named: "Tigre"+"\(i)")!)
        }
        imgTigrecito.animationImages = imagenesTigre
        imgTigrecito.animationDuration = 1.8
        imgTigrecito.startAnimating()
     
        
        var imagenesNutria: [UIImage] = []
        for i in 1...9
        {
            imagenesNutria.append(UIImage(named: "Nutria"+"\(i)")!)
        }
        imgNutria.animationImages = imagenesNutria
        imgNutria.animationDuration = 1.52
        imgNutria.startAnimating()
        
        var imagenesOso: [UIImage] = []
        for i in 1...9
        {
            imagenesOso.append(UIImage(named: "Oso"+"\(i)")!)
        }
        imgOsito.animationImages = imagenesOso
        imgOsito.animationDuration = 1.0
        imgOsito.startAnimating()
        
        var imagenesArdilla: [UIImage] = []
        for i in 1...8
        {
            imagenesArdilla.append(UIImage(named: "Ardilla"+"\(i)")!)
        }
        imgArdillita.animationImages = imagenesArdilla
        imgArdillita.animationDuration = 1.0
        imgArdillita.startAnimating()
        
        var imagenesAnimales: [UIImage] = []
        for i in 1...8
        {
            imagenesAnimales.append(UIImage(named: "Animales"+"\(i)")!)
        }
        imgAnimacion.animationImages = imagenesAnimales
        imgAnimacion.animationDuration = 2.2
        imgAnimacion.startAnimating()
       
        
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

