//
//  ABGreatOutView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI

struct ABGreatOutView: View {
    @Environment(\.deviceSize) var deviceSize
    var body: some View {
        ZStack(alignment: .top) {
            
            Image("grtout")
                .resizable()
                .scaledToFill()
                .frame(width: deviceSize.width - 40,height: 500)
                .cornerRadius(12)
                .padding(.horizontal)
            
            VStack {
                Text("The Greatest Outdoors")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text("Wishlists curated by Airbnb.")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                
                Button {
                    
                } label: {
                    Text("Get inspired")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.black)
                        )
                        .foregroundColor(.white)
                }
            }
            .offset(y: 25)
        }
        
    }
}

struct ABGreatOutView_Previews: PreviewProvider {
    static var previews: some View {
        ABGreatOutView()
    }
}
