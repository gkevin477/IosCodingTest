//
//  StoreModel.swift
//  IosCodingTest
//
//  Created by admin on 7/25/22.
//

import Foundation
struct StoreModel: Decodable, Identifiable{
    let id : String
    let name : String
    let breweryType : String
    let street : String
    let address2 : String
    let address3 : String
    let city : String
    let state : String
    let countyProvince : String
    let postalCode : Int
    let country : String
    let longitude : Float
    let latitude : Float
    let phone : Int
    let websiteUrl : String
    let updatedAt : Date
    let createdAt : Date
    
    enum CodingKeys: String,CodingKey{
        case id,name
        case breweryType = "brewery_type"
        case street
        case address2 = "address_2"
        case address3 = "address_3"
        case city,state
        case countyProvince = "county_province"
        case postalCode = "postal_code"
        case country,longitude,latitude,phone
        case websiteUrl = "website_url"
        case updatedAt = "updated_at"
        case createdAt = "created_at"
    }
}
