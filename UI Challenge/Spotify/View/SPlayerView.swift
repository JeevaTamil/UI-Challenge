//
//  SPlayerView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 17/07/21.
//

import SwiftUI

struct SPlayerView: View {
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Spacer()
                BottomShape(tl: 50, tr: 50)
                    .fill(Color.blue)
                    .frame(height: 350)
            }.ignoresSafeArea()
        }
    }
}

struct SPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SPlayerView()
    }
}


struct BottomShape: Shape {
    var tl: CGFloat = 20
    var tr: CGFloat = 20
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addArc(center: CGPoint(x: tl, y: rect.minY), radius: tl, startAngle: .degrees(180), endAngle: .degrees(90), clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX - tr , y: tl))
        path.addArc(center: CGPoint(x: rect.maxX - tr, y: tl + tr), radius: tr, startAngle: .degrees(270), endAngle: .degrees(0), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
}














struct CustomShape: Shape {
    
    var tl: CGFloat = 20
    var tr: CGFloat = -20
    var bl: CGFloat = 20
    var br: CGFloat = 20
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let w = rect.size.width
        let h = rect.size.height
        
        let start = getTheStartingPoint(rect: rect)
        
        path.move(to: start)
        if tl < 0 {
            path.addArc(center: CGPoint(x: tl, y: 0), radius: tl, startAngle: .degrees(180), endAngle: .degrees(90), clockwise: true)
        }
        
        
        return path
        
    }
    
    func getTheStartingPoint(rect: CGRect) -> CGPoint {
        if tr < 0 {
            return CGPoint(x: rect.maxX, y: rect.maxY)
        } else {
            return CGPoint(x: rect.minX, y: rect.minY)
        }
    }
}
