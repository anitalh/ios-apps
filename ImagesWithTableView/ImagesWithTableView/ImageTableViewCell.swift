//
//  ImageTableViewCell.swift
//  ImagesWithTableView
//
//  Created by Anita Hegde on 12/9/23.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
