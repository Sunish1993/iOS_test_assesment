//
//  SecondViewModel.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation
protocol DetailsViewModelDelegate : AnyObject {
    func didReceiveDetailsResponse(response: DetailModelData?)
}

class SecondViewModel
{
    
    var delegate : DetailsViewModelDelegate?
    func getApiDetails(requestId : Int)
    {
       let resource = Resource()
        resource.getDetailsData(requestId: requestId) { [weak self] result in
            self?.delegate?.didReceiveDetailsResponse(response: result)
        }
   }
 }
