//
//  DataApi.swift
//  IosCodingTest
//
//  Created by admin on 7/25/22.
//

import Foundation
import SwiftUI
struct DataApi{
    var stores : [StoreViewModel]
    func getData(comp: @escaping ([StoreModel]) -> ()){
        guard let url = URL(string: "https://mocki.io/v1/214223dc-c8f4-4a2f-9749-8ce2f355d04f") else{
            return}
        
        URLSession.shared.dataTask(with: url){
            data, response, error in
            guard let data = data else {
                print(error!.localizedDescription)
                return}
            
            do{
                let results =  try JSONDecoder().decode([StoreModel].self, from: data)
                
                comp(results)
            }catch{
                print(error.localizedDescription)
                return
            }
            
        }.resume()
    }
}
