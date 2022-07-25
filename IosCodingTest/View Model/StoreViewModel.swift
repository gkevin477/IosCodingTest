//
//  StoreViewModel.swift
//  IosCodingTest
//
//  Created by admin on 7/25/22.
//

import Foundation
class StoreViewModel : ObservableObject, Identifiable{
    @Published var name = String()
    @Published var street = String()
    @Published var city = String()
    @Published var state = String()
}
