//
//  FirstViewController.swift
//  Webinar2
//
//  Created by jose luis sanchez-porro godoy on 24/02/2019.
//  Copyright © 2019 uax. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTap(_ sender: Any) {
        // Presentamos uialert si está vacía la caja de texto
        if( (textBox.text?.isEmpty)!) {
            let alert = UIAlertController(title: "Alerta", message: "Introduce una palabra", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { (UIAlertAction) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert,animated: true,completion: nil)
        }
    
    }
    
}
