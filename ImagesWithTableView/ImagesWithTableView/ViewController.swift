//
//  ViewController.swift
//  ImagesWithTableView
//
//  Created by Anita Hegde on 12/9/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["Seattle 1", "Seattle 2", "Seattle 3", "Seattle 4", "Seattle 5", "Seattle 6", "Seattle 7", "Seattle 8", "Seattle 9", "Seattle 10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =   Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        cell.imageView?.image = UIImage(named: "Seattle\(indexPath.row)")
        cell.lblView.text = imageNames[indexPath.row]
        
//        cell.imgView?.image = UIImage(named: imageNames[indexPath.row])
//        cell.lblView?.text = imageNames[indexPath.row]
        return cell
    }
    


}

