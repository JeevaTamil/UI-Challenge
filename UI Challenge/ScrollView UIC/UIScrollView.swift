//
//  UIScrollView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 15/02/21.
//

import SwiftUI

struct UIScrollView: View {
    var bounds = UIScreen.main.bounds
    @State private var scrollLevel: CGFloat = 0.0
    
    var body: some View {
        VStack {
            ProgressView("", value: scrollLevel)
            ScrollView(showsIndicators: false) {
                ZStack {
                    GeometryReader { proxy in
                        let minimumY = proxy.frame(in: .named("scroll")).minY
                        let height = proxy.frame(in: .named("scroll")).height
                        let f_off = (minimumY / (height - (bounds.height - 80))) * -1
                        
                        Color.clear.preference(key: ScrollViewOffsetPreferenceKey.self, value: f_off)
                    }
                    LazyVStack {
                        ForEach(0...100, id: \.self) { index in
                            Text("Row \(index)")
                                .frame(width: bounds.width, height: 70, alignment: .center)
                        }
                    }
                }
            }
            .navigationTitle("Scroll")
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { f_off in
                if f_off > 0 && f_off < 1 {
                    withAnimation {
                        scrollLevel = f_off
                    }
                } else if f_off < 0 || f_off == 0 {
                    scrollLevel = .zero
                } else {
                    scrollLevel = 1.0
                }
            }
        }
    }
}

struct ScrollViewOffsetPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {}
}

struct UIScrollView_Previews: PreviewProvider {
    static var previews: some View {
        UIScrollView()
    }
}


