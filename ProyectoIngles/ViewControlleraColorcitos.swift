//
//  ViewControlleraColorcitos.swift
//  ProyectoIngles
//
//  Created by Alumno on 07/09/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerColorcitos: UIViewController {
    
   @IBOutlet weak var imgColorSeleccionado: UIImageView!
    
    @IBOutlet weak var lblColorSeleccionado: UILabel!
    
    
    @IBOutlet weak var imgAmarillo: UIImageView!
    @IBOutlet weak var imgAzul: UIImageView!
    
    var player : AVAudioPlayer?
    var reproduccion = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblColorSeleccionado.text = " "
        
        
        animationImageMiniaturas(nombreColor: "Amarillo10", imageViewColor: imgAmarillo, duracion: 2)
        
    }
    
    
    func animationImageMiniaturas(nombreColor: String, imageViewColor: UIImageView, duracion: Int) {
        
        
        var arregloColor : [String] = []
        
        var arregloUIImage : [UIImage] = []
        
        
        let arregloManzana : [String] = []
        let arregloFresa : [String] = []
        let arregloCereza : [String] = []
        let arregloKiwi : [String] = []
        let arregloLimon : [String] = []
        let arregloPlatano : [String] = []
        let arregloNaranja : [String] = []
        let arregloAmarillo: [String] = ["Amarillo01", "Amarillo02", "Amarillo01",
                                      "Amarillo03", "Amarillo04", "Amarillo05", "Amarillo06", "Amarillo07",
                                      "Amarillo08", "Amarillo09", "Amarillo10", "Amarillo11", "Amarillo12"]
        let arregloSandia : [String] = []
        // FIN Secuencia de imágenes de cada Color (en miniaturas)
        
        
        
        switch nombreColor {
        case "Manzana":
            arregloColor = arregloManzana
        case "Fresa":
            arregloColor = arregloFresa
        case "Cereza":
            arregloColor = arregloCereza
        case "Kiwi":
            arregloColor = arregloKiwi
        case "Limon":
            arregloColor = arregloLimon
        case "Platano":
            arregloColor = arregloPlatano
        case "Naranja":
            arregloColor = arregloNaranja
        case "Pera":
            arregloColor = arregloAmarillo
        case "Sandia":
            arregloColor = arregloSandia
        default:
            arregloColor = []
        }
        
        
        for imagen in arregloColor {
            
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        
        imageViewColor.animationImages = arregloUIImage
        
        imageViewColor.animationDuration = TimeInterval(duracion)
        
        imageViewColor.startAnimating()
    }
        
       
    @IBAction func tapAzul(_ sender: Any) {
        
    }
    
    @IBAction func tapAmarillo(_ sender: Any) {
       
    }
    
    @IBAction func tapRojo(_ sender: Any) {
        
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        
    }
    
    @IBAction func tapVerde(_ sender: Any) {
        
    }
    
    @IBAction func tapBlanco(_ sender: Any) {
        
    }
    
    @IBAction func tapRosa(_ sender: Any) {
        
    }
    
    @IBAction func tapMorado(_ sender: Any) {
        
    }
    
    @IBAction func tapNegro(_ sender: Any) {
        
    }
   /*
    func animationImagesTap(duracion: Int, nombreColor: String) {
        
        var arregloColorSeleccionado : [String] = []
        var arregloUIImage : [UIImage] = []
        
        
        let arregloManzanaSeleccionada : [String] = []
        let arregloFresaSeleccionada : [String] = []
        let arregloCerezaSeleccionada : [String] = []
        let arregloKiwiSeleccionada : [String] = []
        let arregloLimonSeleccionada : [String] = []
        let arregloPlatanoSeleccionada : [String] = []
        let arregloNaranjaSeleccionada : [String] = []
        let arregloPeraSeleccionada : [String] = ["animPera00", "animPera01", "animPera02",
                                                  "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
                                                  "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
                                                  "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
                                                  "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
                                                  "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
                                                  "animPera28", "animPera29"]
        let arregloSandiaSeleccionada : [String] = []
        
        
        switch nombreFruta {
        case "Apple":
            arregloColorseleccionado = arregloManzanaSeleccionada
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
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
}
