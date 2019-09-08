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
    @IBOutlet weak var imgRojo: UIImageView!
    @IBOutlet weak var imgVerde: UIImageView!
    @IBOutlet weak var imgRosa: UIImageView!
    @IBOutlet weak var imgBlanco: UIImageView!
    @IBOutlet weak var imgNegro: UIImageView!
    @IBOutlet weak var imgMorado: UIImageView!
    @IBOutlet weak var imgNaranja: UIImageView!
    
    
    
    var player : AVAudioPlayer?
    var reproduccion = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblColorSeleccionado.text = " "
        
        
        animationImageMiniaturas(nombreColor: "Amarillo", imageViewColor: imgAmarillo, duracion: 2)
        animationImageMiniaturas(nombreColor: "Azul", imageViewColor: imgAzul, duracion: 2)
        animationImageMiniaturas(nombreColor: "Rojo", imageViewColor: imgRojo, duracion: 2)
        animationImageMiniaturas(nombreColor: "Verde", imageViewColor: imgVerde, duracion: 2)
        animationImageMiniaturas(nombreColor: "Rosa", imageViewColor: imgRosa, duracion: 2)
        animationImageMiniaturas(nombreColor: "Blanco", imageViewColor: imgBlanco, duracion: 2)
        animationImageMiniaturas(nombreColor: "Negro", imageViewColor: imgNegro, duracion: 2)
        animationImageMiniaturas(nombreColor: "Morado", imageViewColor: imgMorado, duracion: 2)
        animationImageMiniaturas(nombreColor: "Naranja", imageViewColor: imgNaranja, duracion: 2)
        
    }
    
    
    func animationImageMiniaturas(nombreColor: String, imageViewColor: UIImageView, duracion: Int) {
        
        
        var arregloColor : [String] = []
        
        var arregloUIImage : [UIImage] = []
        
        
        let arregloAzul : [String] =  ["Azul01","Azul02","Azul03","Azul04","Azul05", "Azul06", "Azul07","Azul08", "Azul09","Azul10"]
        let arregloRojo : [String] =  ["Rojo01","Rojo02","Rojo03","Rojo04","Rojo05", "Rojo06", "Rojo07","Rojo08", "Rojo09","Rojo10"]
        let arregloVerde : [String] = ["Verde01","Verde02","Verde03","Verde04","Verde05", "Verde06", "Verde07","Verde08", "Verde09","Verde10"]
        let arregloRosa : [String] = ["Rosa01","Rosa02","Rosa03","Rosa04","Rosa05", "Rosa06", "Rosa07","Rosa08", "Rosa09","Rosa10"]
        let arregloBlanco : [String] = ["Blanco01","Blanco02","Blanco03","Blanco04","Blanco05", "Blanco06", "Blanco07","Blanco08", "Blanco09","Blanco10"]
        let arregloNegro: [String] = ["Negro01","Negro02","Negro03","Negro04","Negro05", "Negro06", "Negro07","Negro08", "Negro09","Negro10"]
        let arregloMorado : [String] = ["Morado01","Morado02","Morado03","Morado04","Morado05", "Morado06", "Morado07","Morado08", "Morado09","Morado10"]
        let arregloAmarillo: [String] =     ["Amarillo01","Amarillo02","Amarillo03","Amarillo04","Amarillo05", "Amarillo06", "Amarillo07","Amarillo08", "Amarillo09","Amarillo10"]
        let arregloNaranja : [String] = ["Naranja01","Naranja02","Naranja03","Naranja04","Naranja05", "Naranja06", "Naranja07","Naranja08", "Naranja09","Naranja10"]
        // FIN Secuencia de imágenes de cada Color (en miniaturas)
        
        
        
        switch nombreColor {
        case "Amarillo":
            arregloColor = arregloAmarillo
        case "Azul":
            arregloColor = arregloAzul
        case "Rojo":
            arregloColor = arregloRojo
        case "Verde":
            arregloColor = arregloVerde
        case "Rosa":
            arregloColor = arregloRosa
        case "Blanco":
            arregloColor = arregloBlanco
        case "Negro":
            arregloColor = arregloNegro
        case "Morado":
            arregloColor = arregloMorado
        case "Naranja":
            arregloColor = arregloNaranja
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
        animationImagesTap(duracion: 2, nombreColor: "Blue")
        playAudio(fileNameAndExtension: "blue.mp3")
    }
    
    @IBAction func tapAmarillo(_ sender: Any) {
       
        animationImagesTap(duracion: 2, nombreColor: "Yellow")
        playAudio(fileNameAndExtension: "yellow.mp3")
    }
    
    @IBAction func tapRojo(_ sender: Any) {
        
        animationImagesTap(duracion: 2, nombreColor: "Red")
        playAudio(fileNameAndExtension: "red.mp3")
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreColor: "Orange")
        playAudio(fileNameAndExtension: "orange.mp3")
    }
    
    @IBAction func tapVerde(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreColor: "Green")
        playAudio(fileNameAndExtension: "green.mp3")
    }
    
    @IBAction func tapBlanco(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreColor: "White")
        playAudio(fileNameAndExtension: "white.mp3")
    }
    
    @IBAction func tapRosa(_ sender: Any) {
        
        animationImagesTap(duracion: 2, nombreColor: "Pink")
        playAudio(fileNameAndExtension: "pink.mp3")
    }
    
    @IBAction func tapMorado(_ sender: Any) {
        
        animationImagesTap(duracion: 2, nombreColor: "Purple")
        playAudio(fileNameAndExtension: "purple.mp3")
    }
    
    @IBAction func tapNegro(_ sender: Any) {
        
        animationImagesTap(duracion: 2, nombreColor: "Black")
        playAudio(fileNameAndExtension: "black.mp3")
    }
   
    func animationImagesTap(duracion: Int, nombreColor: String) {
        
        var arregloColorSeleccionado : [String] = []
        var arregloUIImage : [UIImage] = []
        
        
        let arregloAzulSeleccionado : [String] =  ["Azul0", "Azul1", "Azul2",  "Azul3", "Azul4", "Azul5", "Azul6", "Azul7", "Azul8"]
        let arregloRojoSeleccionado : [String] = ["Rojo_00000", "Rojo_00001", "Rojo_00002",  "Rojo_00003", "Rojo_00004", "Rojo_00005", "Rojo_00006", "Rojo_00007", "Rojo_00008"]
        let arregloVerdeSeleccionado : [String] =  ["Verdes0", "Verdes1", "Verdes2",  "Verdes3", "Verdes4"]
        let arregloRosaSeleccionado : [String] =  ["Rosa0", "Rosa1", "Rosa2",  "Rosa3", "Rosa4", "Rosa5", "Rosa6", "Rosa7", "Rosa8"]
        let arregloBlancoSeleccionado : [String] = ["Blanco_00000", "Blanco_00001", "Blanco_00002",  "Blanco_00003", "Blanco_00004", "Blanco_00005", "Blanco_00006", "Blanco_00007", "Blanco_00008"]
        let arregloNegroSeleccionado : [String] =  ["Negro0", "Negro1", "Negro2",  "Negro3", "Negro4", "Negro5", "Negro6", "Negro7", "Negro8"]
        let arregloMoradoSeleccionado : [String] =  ["Morado0", "Morado1", "Morado2",  "Morado3", "Morado4", "Amarillo5", "Morado6", "Morado7", "Morado8"]
        let arregloAmarrilloSeleccionado : [String] = ["Amarillo0", "Amarillo1", "Amarillo2",  "Amarillo3", "Amarillo4", "Amarillo5", "Amarillo6", "Amarillo7", "Amarillo8"]
        let arregloNaranjaSeleccionado : [String] =  ["Naranja_00000", "Naranja_00001", "Naranja_00002",  "Naranja_00003", "Naranja_00004", "Naranja_00005", "Naranja_00006", "Naranja_00007", "Naranja_00008"]
        
        
        switch nombreColor {
        case "Yellow":
            arregloColorSeleccionado = arregloAmarrilloSeleccionado
        case "Blue":
            arregloColorSeleccionado = arregloAzulSeleccionado
        case "Red":
            arregloColorSeleccionado = arregloRojoSeleccionado
        case "Green":
            arregloColorSeleccionado = arregloVerdeSeleccionado
        case "Pink":
            arregloColorSeleccionado = arregloRosaSeleccionado
        case "White":
            arregloColorSeleccionado = arregloBlancoSeleccionado
        case "Black":
            arregloColorSeleccionado = arregloNegroSeleccionado
        case "Purple":
            arregloColorSeleccionado = arregloMoradoSeleccionado
        case "Orange":
            arregloColorSeleccionado = arregloNaranjaSeleccionado
        default:
            arregloColorSeleccionado = []
        }
        
        
        for imagen in arregloColorSeleccionado {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imgColorSeleccionado.animationImages = arregloUIImage
        imgColorSeleccionado.animationDuration = TimeInterval(duracion)
        imgColorSeleccionado.startAnimating()
        
        
        lblColorSeleccionado.text = nombreColor
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
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
}
