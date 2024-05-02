//
//  HttpUtility.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation

struct APIsCollection {
  static let listApi = "https://jsonplaceholder.typicode.com/posts"
  static let detailsApi = "https://jsonplaceholder.typicode.com/todos/"
}

struct HttpUtility
{
 
    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ result: T?)-> Void)
    {
       
        URLSession.shared.dataTask(with: requestUrl) { (responseData, httpUrlResponse, error) in
            if(error == nil && responseData != nil && responseData?.count != 0)
            {
 
                let decoder = JSONDecoder()
                do {
                    let result = try decoder.decode(T.self, from: responseData!)
 
                    _=completionHandler(result)
                }
                catch let error{
                    debugPrint("error occured while decoding = \(error)")
                }
            }

        }.resume()
    }
 
}
