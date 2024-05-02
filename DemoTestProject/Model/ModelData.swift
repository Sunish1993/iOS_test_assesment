//
//  ModelData.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation



struct ModelData : Decodable
{
    var userId , id : Int
    var title , body : String
    
    enum CodingKeys: String, CodingKey {
        case userId, id, title , body
    }
 
}
 
