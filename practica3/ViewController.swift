//
//  ViewController.swift
//  practica3
//
//  Created by mac19 on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carta1IV: UIImageView!
    @IBOutlet weak var carta2IV: UIImageView!
    
    var baraja = [#imageLiteral(resourceName: "1.png"),#imageLiteral(resourceName: "3.png"),#imageLiteral(resourceName: "5.jpg"),#imageLiteral(resourceName: "10.png"),#imageLiteral(resourceName: "11.png"),#imageLiteral(resourceName: "12.png"),#imageLiteral(resourceName: "14.jpeg"),#imageLiteral(resourceName: "15.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func jugarBtn(_ sender: UIButton) {
        
        let random1 = Int(arc4random_uniform(7))
        let random2 = Int(arc4random_uniform(7))
        
        //carta1IV.image = UIImage(named: "1")
        //carta2IV.image = UIImage(named: "3")
        
        carta1IV.image = baraja[random1]
        carta2IV.image = baraja[random2]
        
        //genera un numero aleatorio del 0 al 4
        
        //validar si el juego resulto ganador
        if ((random1==0 && random2 == 2) || (random1 == 2 && random2 == 0) || (random1==1 && random2==2) || (random1==2 && random2==1)) {
            let alerta = UIAlertController(title: "Felicidades", message: "Ganaste!", preferredStyle: .alert)
            
            let accionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            let accionApostar = UIAlertAction(title: "Apostar", style: .default){ _ in
                print("Apostar")
            }
            
            let accionJugarNuevo = UIAlertAction(title: "Salir", style: .cancel){ _ in
                print("Salir del juego")
                exit(0)
            }
            alerta.addAction(accionOk)
            alerta.addAction(accionApostar)
            alerta.addAction(accionJugarNuevo)
            
            present(alerta, animated: true, completion: nil)
        }
        
    }
}

