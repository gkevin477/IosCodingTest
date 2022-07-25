//
//  BreweryPage.swift
//  IosCodingTest
//
//  Created by admin on 7/25/22.
//

import SwiftUI

struct BreweryPage: View {
    @State var brewery = [StoreModel]()
    @State var dataApi = DataApi()
    var body: some View {
        VStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Breweries")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Random Breweries")
                }
            }
            List{
                ForEach(brewery){
                    data in
                    VStack{
                        Text(data.name)
                        HStack{
                            Text("Address: " + data.street)
                            Text(data.city)
                            Text(data.state)
                        }
                    }
                }.refreshable {
                    dataApi.getData {
                        data in
                        brewery = data
                    }
                }
            }
        }
    }
}

struct BreweryPage_Previews: PreviewProvider {
    static var previews: some View {
        BreweryPage()
    }
}
