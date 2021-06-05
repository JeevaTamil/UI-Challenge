//
//  InProgressView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 20/02/21.
//

import SwiftUI

struct InProgressView: View {
    
    @State private var swipeVal: CGFloat = .zero
    
    var body: some View {
        
        
          ZStack {

            Color.red
                .ignoresSafeArea()

            Image("dev1")
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .center)
                .blur(radius: swipeVal != .zero ? 0 : 3)


            ZStack {
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [Color.white.opacity(0.5), Color.white.opacity(0.2), Color.white.opacity(0.1)]), center: .topLeading, startRadius: 80, endRadius: 270))

                    .frame(width: 200, height: 200, alignment: .center)
                Circle()
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.8), Color.white.opacity(0.4), Color.white.opacity(0.1)] ), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2

                    )
                    .frame(width: 201, height: 201, alignment: .center)
            }
            .shadow(color: Color.white.opacity(0.4), radius: 20, x: 10, y: 20)
            .offset(x: swipeVal, y: 0.0)
            
        }
          .gesture(
              DragGesture(minimumDistance: 100, coordinateSpace: .global)
                  .onChanged({ (val) in

                      withAnimation {
                          swipeVal = val.translation.width
                      }

                      print("translated width - \(val.translation.width)")
                  })
                  .onEnded({ (val) in
                      withAnimation {
                          swipeVal = .zero
                      }
                  })
          )
            
        
    }
}

struct InProgressView_Previews: PreviewProvider {
    static var previews: some View {
        InProgressView()
    }
}


