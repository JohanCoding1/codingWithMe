//
//  recipe-model.swift
//  jsonparth
//
//  Created by artur on 23.11.2021.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
/*
let service = DataService()
self.recipes = service.getLocalData()
*/
        self.recipes = DataService.getLocalData()
        //Set the recipes property
        
    }
}
