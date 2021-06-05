//
//  KMOnboardingView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 03/06/21.
//

import SwiftUI

struct KMOnboardingView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("ob_bg1"), Color("ob_bg2"), Color("ob_bg3")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .zIndex(0)
            
            ZStack(alignment: .bottomLeading) {
                
                VStack {
                    Image("ob1")
                        .resizable()
                        .scaledToFit()
                       
                }
                
                HStack {
                    Text("1")
                        .font(.system(size: 54, weight: .bold, design: .rounded))
                }
               // .offset(y: 120)
               // .zIndex(2)
                
            }
            .frame(height: 400)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)
            .zIndex(1.0)
           
        }
    }
}

struct KMOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        KMOnboardingView()
    }
}
