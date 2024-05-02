//
//  SecondModelData.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation



class Requestdata
{
    var id : Int?
}

struct DetailModelData : Decodable
{
    var userId , id : Int
    var title : String
    var completed : Bool
    
    enum CodingKeys: String, CodingKey {
        case userId, id, title , completed
    }
 
}
 
