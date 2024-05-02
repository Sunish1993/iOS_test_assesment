//
//  SecondViewControllerExtnsn.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation

extension SecondViewController : DetailsViewModelDelegate
{
    func didReceiveDetailsResponse(response: DetailModelData?) {
        DispatchQueue.main.async {
            self.lblDetails.text = "Id : " + String.getString(response?.id) + "\nTitle : " + String.getString(response?.title)
 
        }
        
    }
    
     
}
