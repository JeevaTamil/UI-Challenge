//
//  ABFlexibleButtonView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 18/07/21.
//

import SwiftUI


struct ABFlexibleButtonView: View {
    var body: some View {
        VStack {
            Text("""
                Not sure where to go?
                Perfect.
                """)
                .multilineTextAlignment(.center)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
            
            Button {
                
            } label: {
                Text("I'm flexible")
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: .infinity)
                            .fill(.white)
                            .shadow(color: .secondary.opacity(0.3), radius: 3, x: 2, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: .infinity)
                                    .stroke(Color.secondary.opacity(0.3), lineWidth: 2)
                            )
                    )
                    .foregroundColor(.purple)
            }
        }
        .offset(y: -25)
    }
}


struct ABFlexibleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ABFlexibleButtonView()
    }
}
