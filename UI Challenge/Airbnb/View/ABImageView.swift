//
//  ABImageView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 18/07/21.
//

import SwiftUI


struct ABImageView: View {
    @Environment(\.deviceSize) var deviceSize
 
    var body: some View {
        GeometryReader { geoProxy in
            ZStack {
                
                if geoProxy.frame(in: .global).minY <= 0 {
                    Image("ab")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geoProxy.size.width, height: geoProxy.size.height)
                        .offset(y: -30)
                        .offset(y: geoProxy.frame(in: .global).minY/9)
                    
                    ABFlexibleButtonView()
                        .offset(y: geoProxy.frame(in: .global).minY/9  + 20)
                } else {
                    Image("ab")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geoProxy.size.width, height: deviceSize.height * 0.6 + geoProxy.frame(in: .global).minY)
                        .offset(y: -30)
                        .offset(y: -geoProxy.frame(in: .global).minY)
                    ABFlexibleButtonView()
                        .offset(y: -geoProxy.frame(in: .global).minY + 20)
                }
            }
        }
        .frame(height: deviceSize.height * 0.6)
    }
}

struct ABImageView_Previews: PreviewProvider {
    static var previews: some View {
        ABImageView()
    }
}
