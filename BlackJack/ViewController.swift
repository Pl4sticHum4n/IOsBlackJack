//
//  ViewController.swift
//  BlackJack
//
//  Created by mac16 on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carta1: UIImageView!
    @IBOutlet weak var carta2: UIImageView!
    
    var baraja = [#imageLiteral(resourceName: "1.png"), #imageLiteral(resourceName: "2.png"), #imageLiteral(resourceName: "3.png"), #imageLiteral(resourceName: "4.png"), #imageLiteral(resourceName: "6.png"), #imageLiteral(resourceName: "7.png"), #imageLiteral(resourceName: "8.png"),#imageLiteral(resourceName: "17.jpeg"),#imageLiteral(resourceName: "13.png"),#imageLiteral(resourceName: "14.jpeg"),#imageLiteral(resourceName: "15.jpeg"),#imageLiteral(resourceName: "19.png"),#imageLiteral(resourceName: "18.jpeg"),#imageLiteral(resourceName: "9.jpeg"),#imageLiteral(resourceName: "11.png"),#imageLiteral(resourceName: "10.png"),#imageLiteral(resourceName: "12.png"),#imageLiteral(resourceName: "16.jpeg"), #imageLiteral(resourceName: "5.jpg"), #imageLiteral(resourceName: "13.png")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var c1 = 0
    var c2 = 0
    
    @IBAction func jugarButton(_ sender: UIButton) {
        startGame()
        
        if (c1 <= 6 && c2 >= 18 || c1 >= 18 && c2 <= 6){
            //Validar si el juego es ganador
            let alerta = UIAlertController(title: "¡Felicidades!", message: "Has ganado el juego", preferredStyle: .alert)
            
            let actionOut = UIAlertAction(title: "Salir", style: .destructive){_ in
                print("Salir del juego")
                exit(0)
            }
            
            let actionNg = UIAlertAction(title: "Jugar de nuevo", style: .default){_ in
                self.carta1.image = UIImage(named: "image069")
                self.carta2.image = UIImage(named: "image069")
            }
            
            alerta.addAction(actionNg)
            alerta.addAction(actionOut)
            
            present(alerta, animated: true, completion: nil)
            
        } else {
            let alerta2 = UIAlertController(title: "Has perdido :(", message: "Suerte para la pròxima", preferredStyle: .alert)
            let actionOut = UIAlertAction(title: "Salir", style: .destructive){_ in
                print("Salir del juego")
                exit(0)
            }
            
            let actionNg = UIAlertAction(title: "Jugar de nuevo", style: .default){_ in
                self.carta1.image = UIImage(named: "image069")
                self.carta2.image = UIImage(named: "image069")
            }
            
            alerta2.addAction(actionNg)
            alerta2.addAction(actionOut)
            
            present(alerta2, animated: true, completion: nil)
            
        }
        
    }
    
    func startGame (){
        c1 = Int.random(in: 0...19)
        c2 = Int.random(in: 0...19)
        carta1.image = baraja[c1]
        carta2.image = baraja[c2]
    }
    
}

