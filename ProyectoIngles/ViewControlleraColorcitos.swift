//
//  ViewControlleraColorcitos.swift
//  ProyectoIngles
//
//  Created by Alumno on 07/09/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerColorcitos: UIViewController {
    
    @IBAction func doTapAmarillo(_ sender: Any) {
        
        var imagenesSecuenciaAmarillo : [UIImage] = []
        imagenesSecuenciaAmarillo.removeAll()
        
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo01")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo02")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo03")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo04")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo05")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo06")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo07")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo08")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo09")!)
        imagenesSecuenciaAmarillo.append(UIImage(named: "Amarillo10")!)
        
        imagenesSecuenciaPrincipal
        
        
    }
    
    
}
