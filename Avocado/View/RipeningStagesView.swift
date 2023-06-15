//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Jasmine Lai Hweeying on 14/06/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    
    let ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
          VStack {
            Spacer()
            HStack(alignment: .center, spacing: 25) {
              ForEach(ripeningStages) { item in
                RipeningView(ripening: item)
              }
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            Spacer()
          }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
