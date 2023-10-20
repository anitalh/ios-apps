//
//  ViewController.swift
//  AlertController
//
//  Created by Anita Hegde on 10/20/23.
//

import UIKit

class ViewController: UIViewController {
    var txtField: UITextField?
    @IBOutlet weak var lblAlert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showAlertAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Sample Alert", message: "message", preferredStyle: .alert)
        
        let okButton  = UIAlertAction(title: "OK", style: .default) { action in
            self.lblAlert.text = self.txtField?.text
            print("OK button pressed")
        }
        
        let cancleButton  = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("OK button pressed")
        }
        
        alertController.addAction(okButton)
        alertController.addAction(cancleButton)
        alertController.addTextField{ txtField in
            txtField.placeholder = "Type Something Here"
            
            self.txtField = txtField
        }
        
        self.present(alertController, animated: true)
    }
}

