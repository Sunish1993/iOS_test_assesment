//
//  ViewTVC.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import UIKit

class ViewTVC: UITableViewCell {

    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
