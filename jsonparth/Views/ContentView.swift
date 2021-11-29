//
//  ContentView.swift
//  jsonparth
//
//  Created by artur on 23.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.recipes) { r in
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    HStack(spacing: 20) {
                        Image(r.image)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .scaledToFill()
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                }
            }
            .navigationTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
