//
//  ViewController.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 20/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
//    var dataList = [ModelData]()
    
    var viewModel : DataViewModel = DataViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        viewModel.getApiDataList { check in
 
        DispatchQueue.main.async {
            self.tblView.reloadData()
        }
 
        }
    }
    
   
 
}



 
