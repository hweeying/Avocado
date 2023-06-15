//
//  RecipeRatingView.swift
//  Avocado
//
//  Created by Jasmine Lai Hweeying on 06/06/2023.
//

import SwiftUI

struct RecipeRatingView: View {
    
    let recipe: Recipe
    
    var body: some View {
        HStack{
            ForEach(0...recipe.rating, id: \.self ){_ in
                Image(systemName: "star.fill")
                          .font(.body)
                          .foregroundColor(Color.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[2])
    }
}
