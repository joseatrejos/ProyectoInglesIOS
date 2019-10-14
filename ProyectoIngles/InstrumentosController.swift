import UIKit
import AVFoundation

class InstrumentosController: UIViewController {
    
    // - AudioPlayer Variables -
    var sonido : AVAudioPlayer?
    var violin : AVAudioPlayer?
    var trompeta : AVAudioPlayer?
    var guitarra : AVAudioPlayer?
    var piano : AVAudioPlayer?
    var tambor : AVAudioPlayer?
    var flauta : AVAudioPlayer?
    var arpa : AVAudioPlayer?
    var bajo : AVAudioPlayer?
    var xilofono : AVAudioPlayer?
    
    // - Instrument Outlets & Text -
    @IBOutlet weak var lblInstrumentos: UILabel!
    @IBOutlet weak var imgSecuenciaInstrumentos: UIImageView!
    
    // 2nd Instruments' Images' Array
    var imagenesInstrumentos2 : [UIImage] = []
    var imagenesViolin2 : [UIImage] = []
    var imagenesTrompeta2 : [UIImage] = []
    var imagenesGuitarra2 : [UIImage] = []
    var imagenesPiano2 : [UIImage] = []
    var imagenesTambor2 : [UIImage] = []
    var imagenesFlauta2 : [UIImage] = []
    var imagenesArpa2 : [UIImage] = []
    var imagenesBajo2 : [UIImage] = []
    var imagenesXilofono2 : [UIImage] = []
    
    // - Animation TapActions -
    @IBOutlet weak var imgSecuenciaViolin: UIImageView!
    @IBAction func doTapViolin(_ sender: Any) {
        if violin != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesViolin2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Violin"
            sonido?.stop()
            sonido = violin
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaTrompeta: UIImageView!
    @IBAction func doTapTrompeta(_ sender: Any) {
        if trompeta != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesTrompeta2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Trumpet"
            sonido?.stop()
            sonido = trompeta
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaGuitarra: UIImageView!
    @IBAction func doTapGuitarra(_ sender: Any) {
        if guitarra != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesGuitarra2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Guitar"
            sonido?.stop()
            sonido = guitarra
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaPiano: UIImageView!
    @IBAction func doTapPiano(_ sender: Any) {
        if piano != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesPiano2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Piano"
            sonido?.stop()
            sonido = piano
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaTambor: UIImageView!
    @IBAction func doTapTambor(_ sender: Any) {
        if tambor != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesTambor2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Drum"
            sonido?.stop()
            sonido = tambor
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaFlauta: UIImageView!
    @IBAction func doTapFlauta(_ sender: Any) {
        if flauta != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesFlauta2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Flute"
            sonido?.stop()
            sonido = flauta
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaArpa: UIImageView!
    @IBAction func doTapArpa(_ sender: Any) {
        if arpa != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesArpa2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Harp"
            sonido?.stop()
            sonido = arpa
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaBajo: UIImageView!
    @IBAction func doTapBajo(_ sender: Any) {
        if bajo != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesBajo2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Bass"
            sonido?.stop()
            sonido = bajo
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    @IBOutlet weak var imgSecuenciaXilofono: UIImageView!
    @IBAction func doTapXilofono(_ sender: Any) {
        if xilofono != nil {
            
            // Ejecucion del codigo para mostrar arriba la nueva animacion
            imgSecuenciaInstrumentos.animationImages = imagenesXilofono2
            imgSecuenciaInstrumentos.animationDuration = 1.1
            imgSecuenciaInstrumentos.startAnimating()
            lblInstrumentos.text = "Xylophone"
            sonido?.stop()
            sonido = xilofono
            sonido?.currentTime = 0
            sonido?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // - Arreglos de las UIImages con las imagenes de las primeras 9 secuencias -
        var imagenesInstrumentos : [UIImage] = []
        var imagenesViolin : [UIImage] = []
        var imagenesTrompeta : [UIImage] = []
        var imagenesGuitarra : [UIImage] = []
        var imagenesPiano : [UIImage] = []
        var imagenesTambor : [UIImage] = []
        var imagenesFlauta : [UIImage] = []
        var imagenesArpa : [UIImage] = []
        var imagenesBajo : [UIImage] = []
        var imagenesXilofono : [UIImage] = []
        
        // - Llenado de los 19 Arreglos con sus frames -
        // Instrumentos General
        for i in 0...9 {
            imagenesInstrumentos.append(UIImage(named : "MenuInstrumentos2_" + "\(i)")!)
        }
        
        // Violin
        for i in 1...8 {
            imagenesViolin.append(UIImage(named : "Violin" + "\(i)")!)
        }
        // Violin 2
        for i in 1...8 {
            imagenesViolin2.append(UIImage(named : "Violin2_" + "\(i)")!)
        }
        
        // Trompeta
        for i in 1...12 {
            imagenesTrompeta.append(UIImage(named : "Trompeta" + "\(i)")!)
        }
        // Trompeta 2
        for i in 1...8 {
            imagenesTrompeta2.append(UIImage(named : "Trompeta2_" + "\(i)")!)
        }
        
        // Guitarra
        for i in 1...9 {
            imagenesGuitarra.append(UIImage(named : "Guitarra" + "\(i)")!)
        }
        // Guitarra 2
        for i in 1...8 {
            imagenesGuitarra2.append(UIImage(named : "Guitarra2_" + "\(i)")!)
        }
        
        // Piano
        for i in 1...9 {
            imagenesPiano.append(UIImage(named : "Piano" + "\(i)")!)
        }
        // Piano 2
        for i in 1...8 {
            imagenesPiano2.append(UIImage(named : "Piano2_" + "\(i)")!)
        }
        
        // Tambor
        for i in 1...12 {
            imagenesTambor.append(UIImage(named : "Tambor" + "\(i)")!)
        }
        // Tambor 2
        for i in 1...8 {
            imagenesTambor2.append(UIImage(named : "Tambor2_" + "\(i)")!)
        }
        
        // Flauta
        for i in 1...9 {
            imagenesFlauta.append(UIImage(named : "Flauta" + "\(i)")!)
        }
        // Flauta 2
        for i in 1...8 {
            imagenesFlauta2.append(UIImage(named : "Flauta2_" + "\(i)")!)
        }
        
        // Arpa
        for i in 1...13 {
            imagenesArpa.append(UIImage(named : "Arpa" + "\(i)")!)
        }
        // Arpa 2
        for i in 1...8 {
            imagenesArpa2.append(UIImage(named : "Arpa2_" + "\(i)")!)
        }
        
        // Bajo
        for i in 1...10 {
            imagenesBajo.append(UIImage(named : "Bajo" + "\(i)")!)
        }
        // Bajo2
        for i in 1...8 {
            imagenesBajo2.append(UIImage(named : "Bajo2_" + "\(i)")!)
        }
        
        // Xilofono
        for i in 1...8 {
            imagenesXilofono.append(UIImage(named : "Xilofono" + "\(i)")!)
        }
        // Xilofono 2
        for i in 1...8 {
            imagenesXilofono2.append(UIImage(named : "Xilofono2_" + "\(i)")!)
        }
        
        // - Reproduccion de las primeras 10 animaciones -
        // Instrumentos General
        imgSecuenciaInstrumentos.animationImages = imagenesInstrumentos
        imgSecuenciaInstrumentos.animationDuration = 1.38
        imgSecuenciaInstrumentos.startAnimating()
        
        // Violin
        imgSecuenciaViolin.animationImages = imagenesViolin
        imgSecuenciaViolin.animationDuration = 1.1
        imgSecuenciaViolin.startAnimating()
        
        // Trompeta
        imgSecuenciaTrompeta.animationImages = imagenesTrompeta
        imgSecuenciaTrompeta.animationDuration = 1.25
        imgSecuenciaTrompeta.startAnimating()
        
        // Guitarra
        imgSecuenciaGuitarra.animationImages = imagenesGuitarra
        imgSecuenciaGuitarra.animationDuration = 1.1
        imgSecuenciaGuitarra.startAnimating()
        
        // Piano
        imgSecuenciaPiano.animationImages = imagenesPiano
        imgSecuenciaPiano.animationDuration = 1.1
        imgSecuenciaPiano.startAnimating()
        
        // Tambor
        imgSecuenciaTambor.animationImages = imagenesTambor
        imgSecuenciaTambor.animationDuration = 1.1
        imgSecuenciaTambor.startAnimating()
        
        // Flauta
        imgSecuenciaFlauta.animationImages = imagenesFlauta
        imgSecuenciaFlauta.animationDuration = 1.1
        imgSecuenciaFlauta.startAnimating()
        
        // Arpa
        imgSecuenciaArpa.animationImages = imagenesArpa
        imgSecuenciaArpa.animationDuration = 1.1
        imgSecuenciaArpa.startAnimating()
        
        // Bajo
        imgSecuenciaBajo.animationImages = imagenesBajo
        imgSecuenciaBajo.animationDuration = 1.1
        imgSecuenciaBajo.startAnimating()
        
        // Xilofono
        imgSecuenciaXilofono.animationImages = imagenesXilofono
        imgSecuenciaXilofono.animationDuration = 1.1
        imgSecuenciaXilofono.startAnimating()
        
        // - Carga del Audio -
        // Violin
        let pathViolin = Bundle.main.path(forResource: "Violin.mp3", ofType: nil)
        let urlViolin = URL(fileURLWithPath : pathViolin!)
        
        // Trompeta
        let pathTrompeta = Bundle.main.path(forResource: "Trompeta.mp3", ofType: nil)
        let urlTrompeta = URL(fileURLWithPath : pathTrompeta!)
        
        // Guitarra
        let pathGuitarra = Bundle.main.path(forResource: "Guitarra.mp3", ofType: nil)
        let urlGuitarra = URL(fileURLWithPath : pathGuitarra!)
        
        // Piano
        let pathPiano = Bundle.main.path(forResource: "Piano.mp3", ofType: nil)
        let urlPiano = URL(fileURLWithPath : pathPiano!)
        
        // Tambor
        let pathTambor = Bundle.main.path(forResource: "Tambor.mp3", ofType: nil)
        let urlTambor = URL(fileURLWithPath : pathTambor!)
        
        // Flauta
        let pathFlauta = Bundle.main.path(forResource: "Flauta.mp3", ofType: nil)
        let urlFlauta = URL(fileURLWithPath : pathFlauta!)
        
        // Arpa
        let pathArpa = Bundle.main.path(forResource: "Arpa.mp3", ofType: nil)
        let urlArpa = URL(fileURLWithPath : pathArpa!)
        
        // Bajo
        let pathBajo = Bundle.main.path(forResource: "Bajo.mp3", ofType: nil)
        let urlBajo = URL(fileURLWithPath : pathBajo!)
        
        // Xilofono
        let pathXilofono = Bundle.main.path(forResource: "Xilofono.mp3", ofType: nil)
        let urlXilofono = URL(fileURLWithPath : pathXilofono!)
        
        // - Audio Player's File URL do catch -
        do{
            violin = try AVAudioPlayer(contentsOf: urlViolin)
            trompeta = try AVAudioPlayer(contentsOf: urlTrompeta)
            guitarra = try AVAudioPlayer(contentsOf: urlGuitarra)
            piano = try AVAudioPlayer(contentsOf: urlPiano)
            tambor = try AVAudioPlayer(contentsOf: urlTambor)
            flauta = try AVAudioPlayer(contentsOf: urlFlauta)
            arpa = try AVAudioPlayer(contentsOf: urlArpa)
            bajo = try AVAudioPlayer(contentsOf: urlBajo)
            xilofono = try AVAudioPlayer(contentsOf: urlXilofono)
        }
        catch{
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
