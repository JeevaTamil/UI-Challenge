//
//  UICProgressView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 06/03/21.
//

import SwiftUI

// MARK: ProgressView
struct UICProgressView: View {
    private var originalSize: CGFloat = 30
    private var shadowSize:CGFloat = 25
    
    private var ballColor = [
        1 : Color.red,
        2 : Color.green,
        3 : Color.blue,
        4 : Color.yellow,
        5 : Color.random
    ]
    private let timer = Timer.publish(every: 0.6, on: .main, in: .common).autoconnect()
    
    @State private var shape: CGFloat = 1
    @State private var offSetVal: CGFloat = 0
    @State private var numberOfBalls = 6
    
    var body: some View {
        VStack {
//            HStack {
//
//                Stepper("No. of balls") {
//                    if numberOfBalls < 10 {
//                        numberOfBalls += 1
//                        print("number of balls - \(numberOfBalls)")
//                    }
//                } onDecrement: {
//                    if numberOfBalls > 1 {
//                        numberOfBalls -= 1
//                    }
//                }
//
//                Text("\(numberOfBalls)")
//            }.padding()
            
            
            HStack{
                ForEach(1 ..< numberOfBalls) { num in
                    SingleBallView(originalSize: originalSize, shadowSize: shadowSize, color: ballColor[num]!, offSetVal: $offSetVal, shape: $shape)
                        .animation(Animation.linear.delay(0.25 * Double(num)))
                }
                .onReceive(timer, perform: { _ in
                    applyOffet()
                })
            }
        }
    }
    
    func applyOffet() {
        withAnimation {
            if offSetVal == 25 && shape == 1 {
                self.offSetVal = 0
                shape = 0.8
            } else {
                self.offSetVal = 25
                shape = 1
            }
        }
    }
}

// MARK: SingleBallView
struct SingleBallView: View {
    var originalSize: CGFloat
    var shadowSize:CGFloat
    var color: Color = .random
    @Binding var offSetVal: CGFloat
    @Binding var shape: CGFloat
    
    var body: some View {
        VStack {
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [color, color.opacity(0.6)]), startPoint: .top, endPoint: .bottom))
                .frame(width: originalSize, height: originalSize, alignment: .center)
                .offset(y: -offSetVal)
                .scaleEffect(shape)
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [color.opacity(0.5), color.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
                .frame(width: shadowSize, height: shadowSize, alignment: .center)
                .offset(y: offSetVal)
                .scaleEffect(shape)
        }
    }
}

struct UICProgressView_Previews: PreviewProvider {
    static var previews: some View {
        UICProgressView()
    }
}

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}
