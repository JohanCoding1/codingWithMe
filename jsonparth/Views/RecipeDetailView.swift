//
//  RecipeDetailView.swift
//  jsonparth
//
//  Created by artur on 24.11.2021.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            
            // MARK: Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            // MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom, 8)
                ForEach(recipe.ingredients) { item in
                    Text("• " + item.name)
                        .padding(.bottom, 1)
                }
            }
            .padding(.horizontal)
            // MARK: Divider() - просто полоска
            Divider()
            // MARK: Details
            VStack(alignment: .leading) {
                Text("Directions")
                    .padding(.all, 5)
                    .font(.headline)
                ForEach(0..<recipe.directions.count, id: \.self) { index in
                    Text(String(index + 1) + ". " + recipe.directions[index])
                        .padding([.bottom, .top], 5)
                }
            }
            .padding(.horizontal)
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let recipeModel = RecipeModel()
        RecipeDetailView(recipe: recipeModel.recipes[0])
    }
}
