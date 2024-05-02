//
//  ViewModel.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation
 
 class DataViewModel
{
     var modeldata : [ModelData] = []
    
      func getApiDataList(hander :@escaping (Bool) -> Void)
      {
        let resource = Resource()
        resource.getListData { result in
            self.modeldata = result
            hander(true)

        }
      }
}
