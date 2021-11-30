//
//  ViewController.swift
//  login
//
//  Created by Adrian on 14-11-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nombreText: UITextField!
    
    @IBOutlet var botonOlvideClave: UIButton!
    
    @IBOutlet var botonOlvideUsuario: UIButton!
 
    @IBOutlet var etiquetaRoja: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return} //regresa el botón que llamó
        if sender == botonOlvideClave {
            segue.destination.navigationItem.title = sender.currentTitle
        }else if sender == botonOlvideUsuario {
            segue.destination.navigationItem.title = "Recuperar nombre"
        }else{
            segue.destination.navigationItem.title = nombreText.text
        }
        //segue.destination.navigationItem.title = segue.identifier
        
        //segue.destination.navigationItem.title =
        
    }
    
    @IBAction func accionBotonClave(_ sender: UIButton) {
        performSegue(withIdentifier: "transicionDestino", sender: sender)
        
    }

    @IBAction func accionBotonUsuario(_ sender: UIButton) {
        performSegue(withIdentifier: "transicionDestino", sender: sender)
       
    }
    


}

