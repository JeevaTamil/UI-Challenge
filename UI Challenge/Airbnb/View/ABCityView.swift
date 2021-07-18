//
//  ABCityView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI

struct ABCityView: View {
    var city: City
    
    var body: some View {
        HStack {
            Image(city.imgName)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(city.name)
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                
                Text("\(city.timeForTravel)-hour drive")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ABCityView_Previews: PreviewProvider {
    static var previews: some View {
        ABCityView(city: City.staticData.first!)
    }
}
