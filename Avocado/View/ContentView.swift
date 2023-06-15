//
//  ContentView.swift
//  Avocado
//
//  Created by Jasmine Lai Hweeying on 06/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
          AvocadosView()
            .tabItem({
              Image("tabicon-branch")
              Text("Avocados")
            })
          RecipesView()
            .tabItem({
              Image("tabicon-book")
              Text("Recipes")
            })
          RipeningStagesView()
            .tabItem({
              Image("tabicon-avocado")
              Text("Ripening")
            })
          SettingsView()
            .tabItem({
              Image("tabicon-settings")
              Text("Settings")
            })
        }
        .accentColor(Color.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
