//
//  ABExploreNearView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI


struct ABExploreNearView: View {
    
    @Environment(\.deviceSize) var deviceSize
    
    var body: some View {
        VStack {
            ABHeadingView(title: "Explore nearby")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 80) {
                    ForEach(City.staticData.indices) { index in
                        if (index + 1) % 2 != 0 {
                            VStack(alignment: .leading) {
                                ABCityView(city: City.staticData[index])
                                ABCityView(city: City.staticData[index + 1])
                            }
//                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.leading)
            }
        }
    }
}
    
    
    struct ABExploreNearView_Previews: PreviewProvider {
        static var previews: some View {
            ABExploreNearView()
        }
    }
    
    //
