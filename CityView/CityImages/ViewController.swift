//
//  ViewController.swift
//  CityImages
//
//  Created by Anita Hegde on 9/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Seattle")
    }

    @IBAction func seattleImage(_ sender: Any) {
        imageView.image = UIImage(named: "Seattle")
    }
    
    @IBAction func laImage(_ sender: Any) {
        imageView.image = UIImage(named: "LA")
    }
    
    @IBAction func austinImage(_ sender: Any) {
        imageView.image = UIImage(named: "Austin")
    }
    
    
    @IBAction func nyImage(_ sender: Any) {
        imageView.image = UIImage(named: "NY")
    }
    
    @IBAction func lvImage(_ sender: Any) {
        imageView.image = UIImage(named: "LV")
    }
}

