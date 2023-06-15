//
//  RecipesView.swift
//  Avocado
//
//  Created by Jasmine Lai Hweeying on 06/06/2023.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headersData){header in
                            HeaderView(header: header)
                        }
                    }
                }
                
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(factsData){ fact in
                            FactsView(fact: fact)
                        }
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
