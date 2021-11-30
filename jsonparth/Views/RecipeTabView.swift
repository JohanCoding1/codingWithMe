//
//  RecipeTabView.swift
//  jsonparth
//
//  Created by artur on 29.11.2021.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
        
        TabView {
            
            FeaturedTabView()
                    .tabItem {
                        VStack {
                            Image(systemName: "list.bullet")
                            Text("Tab 2")
                        }
                    }
                
                ContentView()
                    .tabItem {
                        VStack {
                            Image(systemName: "star.fill")
                            Text("List")
                        }
                    }
        }
        .environmentObject(RecipeViewModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
