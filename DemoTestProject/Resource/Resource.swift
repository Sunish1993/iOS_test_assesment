//
//  Resource.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation

struct Resource
{
    
    func getListData( completion: @escaping(_ result : [ModelData]) -> Void)
    
    {
        let httpUtility = HttpUtility()
 
        let requestUrl = URL(string:APIsCollection.listApi)!

        httpUtility.getApiData(requestUrl: requestUrl, resultType: [ModelData].self) { (apiResponse) in

            _ = completion(apiResponse ?? [])
        }
    }
    
    func getDetailsData(requestId : Int, completion: @escaping(_ result : DetailModelData?) -> Void)
    
    {
        let httpUtility = HttpUtility()
 
        let requestUrl = URL(string:APIsCollection.detailsApi + "\(requestId)")!

        httpUtility.getApiData(requestUrl: requestUrl, resultType: DetailModelData.self) { (apiResponse) in
            _ = completion(apiResponse)
        }
         
    }
}
