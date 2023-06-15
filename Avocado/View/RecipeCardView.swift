//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Jasmine Lai Hweeying on 06/06/2023.
//

import SwiftUI

struct RecipeCardView: View {
    
    let recipe: Recipe
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay{
                    HStack{
                        Spacer()
                        
                        VStack{
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            
                            Spacer()
                        }
                    }
                }
            
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)

                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
            
                RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
              
            }
            .padding()
            .padding(.bottom, 12)
          }
          .background(Color.white)
          .cornerRadius(12)
          .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
          .onTapGesture {
              showModal = true
          }
          .sheet(isPresented: $showModal) {
                RecipeDetailView(recipe: recipe)
              }
        
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[2])
            .previewLayout(.sizeThatFits)
    }
}
