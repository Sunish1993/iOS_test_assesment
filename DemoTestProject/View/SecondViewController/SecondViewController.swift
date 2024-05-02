//
//  SecondViewController.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 20/04/24.
//

import UIKit

class SecondViewController: UIViewController {
 
    @IBOutlet weak var lblDetails: UILabel!
    
    var viewModel = SecondViewModel()
    var requestId = Requestdata()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint(Date().description(with: Locale.current))
        self.viewModel.delegate = self
        viewModel.getApiDetails(requestId: self.requestId.id!)
        
     }
    
    
    @IBAction func backAction(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    

    func showData(responseData responseDetaiils: DetailModelData?)
    {
        self.lblDetails.text = "Id : \(responseDetaiils?.id)\nTitle : \(responseDetaiils?.title)"
    }
}

 
