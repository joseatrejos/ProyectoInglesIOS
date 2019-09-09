//
//  FrutasController.swift
//  ProyectoIngles
//
//  Created by Ana Lucia Blanco on 9/2/19.
//  Copyright © 2019 Fer. All rights reserved.
//
import UIKit
import AVFoundation

class FrutasController: UIViewController {
    // Outlets
    @IBOutlet weak var imgFrutaSeleccionada: UIImageView!
    @IBOutlet weak var lblFrutaSeleccionada: UILabel!
    
    @IBOutlet weak var imgManzana: UIImageView!
    @IBOutlet weak var imgFresa: UIImageView!
    @IBOutlet weak var imgCereza: UIImageView!
    @IBOutlet weak var imgNaranja: UIImageView!
    @IBOutlet weak var imgLimon: UIImageView!
    @IBOutlet weak var imgPlatano: UIImageView!
    @IBOutlet weak var imgKiwi: UIImageView!
    @IBOutlet weak var imgPera: UIImageView!
    @IBOutlet weak var imgSandia: UIImageView!
    //
    
    // Variables para el audio
    var player : AVAudioPlayer?
    var reproduccion = true
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblFrutaSeleccionada.text = " "
        
        // Atributos para las miniaturas
        animationImageMiniaturas(nombreFruta: "Manzana", imageViewFruta: imgManzana, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Fresa", imageViewFruta: imgFresa, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Cereza", imageViewFruta: imgCereza, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Kiwi", imageViewFruta: imgKiwi, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Limon", imageViewFruta: imgLimon, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Platano", imageViewFruta: imgPlatano, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Naranja", imageViewFruta: imgNaranja, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Pera", imageViewFruta: imgPera, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Sandia", imageViewFruta: imgSandia, duracion: 1)
        // FIN Atributos para las miniaturas
    }
    
    func animationImageMiniaturas(nombreFruta: String, imageViewFruta: UIImageView, duracion: Int) {
        
        var arregloFruta : [String] = []
        var arregloUIImage : [UIImage] = []
        
        // Manzana
        var arregloManzana : [String] = []
        for i in 0...24{
            arregloManzana.append("animApple" + "\(i)")
        }
        // Fresa
        var arregloFresa : [String] = []
        for i in 0...15{
            arregloFresa.append("animFresaDurmiendo" + "\(i)")
        }
        // Cereza
        var arregloCereza : [String] = []
        for i in 0...19{
            arregloCereza.append("animCerezasMin" + "\(i)")
        }
        // Kiwi
        var arregloKiwi : [String] = []
        for i in 0...15{
            arregloKiwi.append("animKiwi" + "\(i)")
        }
        // Limon
        var arregloLimon : [String] = []
        for i in 0...19{
            arregloLimon.append("animLemon" + "\(i)")
        }
        // Platano
        var arregloPlatano : [String] = []
        for i in 0...15{
            arregloPlatano.append("animBanana" + "\(i)")
        }
        // Naranja
        var arregloNaranja : [String] = []
        for i in 0...31{
            arregloNaranja.append("animNaranjaMin" + "\(i)")
        }
        // Pera
        var arregloPera : [String] = []
        for i in 0...29{
            arregloPera.append("animPera" + "\(i)")
        }
        // Sandia
        var arregloSandia : [String] = []
        for i in 0...14{
            arregloSandia.append("animSandiamin" + "\(i)")
        }
        
        switch nombreFruta {
        case "Manzana":
            arregloFruta = arregloManzana
        case "Fresa":
            arregloFruta = arregloFresa
        case "Cereza":
            arregloFruta = arregloCereza
        case "Kiwi":
            arregloFruta = arregloKiwi
        case "Limon":
            arregloFruta = arregloLimon
        case "Platano":
            arregloFruta = arregloPlatano
        case "Naranja":
            arregloFruta = arregloNaranja
        case "Pera":
            arregloFruta = arregloPera
        case "Sandia":
            arregloFruta = arregloSandia
        default:
            arregloFruta = []
        }
        
        for imagen in arregloFruta {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imageViewFruta.animationImages = arregloUIImage
        imageViewFruta.animationDuration = TimeInterval(duracion)
        imageViewFruta.startAnimating()
    }
    
    // Acciones de TAP
    @IBAction func tapManzana(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Apple")
        playAudio(fileNameAndExtension: "apple.mp3")
    }
    
    @IBAction func tapFresa(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Strawberry")
        playAudio(fileNameAndExtension: "strawberry.mp3")
    }
    
    @IBAction func tapCereza(_ sender: Any) {
        animationImagesTap(duracion: 1, nombreFruta: "Cherry")
        playAudio(fileNameAndExtension: "cherry.mp3")
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Orange")
        playAudio(fileNameAndExtension: "orange.mp3")
    }
    
    @IBAction func tapLimon(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Lemon")
        playAudio(fileNameAndExtension: "lemon.mp3")
    }
    
    @IBAction func tapPlatano(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Banana")
        playAudio(fileNameAndExtension: "banana.mp3")
    }
    
    @IBAction func tapKiwi(_ sender: Any) {
        animationImagesTap(duracion: 5, nombreFruta: "Kiwi")
        playAudio(fileNameAndExtension: "kiwi.mp3")
    }
    
    @IBAction func tapPera(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Pear")
        playAudio(fileNameAndExtension: "pear.mp3")
    }
    
    @IBAction func tapSandia(_ sender: Any) {
        animationImagesTap(duracion: 1, nombreFruta: "Watermelon")
        playAudio(fileNameAndExtension: "watermelon.mp3")
    }
    // FIN Acciones de TAP
    
    // Acciones correspondientes para cada TAP
    func animationImagesTap(duracion: Int, nombreFruta: String) {
        
        var arregloFrutaSeleccionada : [String] = []
        var arregloUIImage : [UIImage] = []
        
        // Manzana
        var arregloManzanaSeleccionada : [String] = []
        for i in 0...49{
            arregloManzanaSeleccionada.append("animManzana" + "\(i)")
        }
        // Fresa
        var arregloFresaSeleccionada : [String] = []
        for i in 0...77{
            arregloFresaSeleccionada.append("animFresaDespertando" + "\(i)")
        }
        // Cereza
        var arregloCerezaSeleccionada : [String] = []
        for i in 0...19{
            arregloCerezaSeleccionada.append("animCerezas" + "\(i)")
        }
        // Kiwi
        var arregloKiwiSeleccionada : [String] = []
        for i in 0...84{
            arregloKiwiSeleccionada.append("animKiwiCaminando" + "\(i)")
        }
        // Limon
        var arregloLimonSeleccionada : [String] = []
        for i in 0...33{
            arregloLimonSeleccionada.append("animLemonSelect" + "\(i)")
        }
        // Platano
        var arregloPlatanoSeleccionada : [String] = []
        for i in 0...44{
            arregloPlatanoSeleccionada.append("animPlatano" + "\(i)")
        }
        // Naranja
        var arregloNaranjaSeleccionada : [String] = []
        for i in 0...44{
            arregloNaranjaSeleccionada.append("animNaranja" + "\(i)")
        }
        // Pera
        var arregloPeraSeleccionada : [String] = []
        for i in 0...27{
            arregloPeraSeleccionada.append("animPear" + "\(i)")
        }
        // Sandia
        var arregloSandiaSeleccionada : [String] = []
        for i in 0...39{
            arregloSandiaSeleccionada.append("animSandia" + "\(i)")
        }
        
        switch nombreFruta {
        case "Apple":
            arregloFrutaSeleccionada = arregloManzanaSeleccionada
        case "Strawberry":
            arregloFrutaSeleccionada = arregloFresaSeleccionada
        case "Cherry":
            arregloFrutaSeleccionada = arregloCerezaSeleccionada
        case "Kiwi":
            arregloFrutaSeleccionada = arregloKiwiSeleccionada
        case "Lemon":
            arregloFrutaSeleccionada = arregloLimonSeleccionada
        case "Banana":
            arregloFrutaSeleccionada = arregloPlatanoSeleccionada
        case "Orange":
            arregloFrutaSeleccionada = arregloNaranjaSeleccionada
        case "Pear":
            arregloFrutaSeleccionada = arregloPeraSeleccionada
        case "Watermelon":
            arregloFrutaSeleccionada = arregloSandiaSeleccionada
        default:
            arregloFrutaSeleccionada = []
        }
        
        
        for imagen in arregloFrutaSeleccionada {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imgFrutaSeleccionada.animationImages = arregloUIImage
        imgFrutaSeleccionada.animationDuration = TimeInterval(duracion)
        imgFrutaSeleccionada.startAnimating()
        
        lblFrutaSeleccionada.text = nombreFruta
    }
    
    // Audios correspondientes para cada TAP
    func playAudio(fileNameAndExtension: String) {
        if(reproduccion){
            let path = Bundle.main.path(forResource: fileNameAndExtension, ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{}
        }else{
            reproduccion = true
        }
        
        if (player != nil) {
            player?.play()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    
}
