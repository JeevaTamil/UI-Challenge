//
//  ADView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 17/07/21.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
struct ADView: View {
    
    @State private var cornerRadius: CGFloat = 20
    @State private var minY: CGFloat = .zero
    @State private var toolbarOpacity: CGFloat = .zero
    @State private var toolbarOffset: CGFloat = 143
    @State private var canScroll: Bool = false
    @State private var searchBarPadding: CGFloat = 20
    @State private var searchBarHeight: CGFloat = 40
    @Environment(\.deviceSize) var deviceSize
    
    
    var body: some View {
        VStack(spacing: 0) {
            
  
            
            ScrollView {
//
                VStack(spacing: 30) {
                    GeometryReader { geoProxy in
                        Color.clear
                            .frame(height: searchBarHeight)
                            .offset(y: 40)
                            .onChange(of: geoProxy.frame(in: .global).minY) { newValue in
                                minY = newValue
                                if newValue >= -9 && newValue <= 143 {
                                    withAnimation(Animation.linear) {
                                        print("'New Vlu' \(newValue)")
                                        print("'offset' \(toolbarOffset)")
                                        toolbarOffset = newValue
                                        if newValue < -10 {
                                            toolbarOffset = -9
                                            return
                                        } else if newValue > 143 {
                                            toolbarOffset = 143
                                            return
                                        }
                                      
                                    }
                                }
                            }
                    }
                    .frame(width: deviceSize.width - 40, height: searchBarHeight)
//                    GeometryReader { geoProxy in
//                        RoundedCorner(radius: cornerRadius)
//                            .opacity(toolbarOpacity == 1 ? 0 : 1)
//                            .onChange(of: geoProxy.frame(in: .global).minY) { newValue in
//                                minY = newValue
//                                if minY < 87 {
//                                    withAnimation {
//                                        toolbarOpacity = 1
//                                    }
//                                } else {
//                                    withAnimation {
//                                        toolbarOpacity = .zero
//                                    }
//                                }
//                            }
                        
//                    }
//                    .frame(height: searchBarHeight)
//                    .padding(.horizontal, searchBarPadding)
//                    .ignoresSafeArea()
                    
                    ADHButtonStack(cornerRadius: $cornerRadius)
                    
                    Text("MinY: **\(minY)**")
                }
                VScrollView()
            }
            
        }
        .navigationBarBackButtonHidden(true)
        //.navigationTitle("AnimatableData")
        .toolbar {
            ToolbarItem(placement: .automatic) {
               
                RoundedCorner(radius: cornerRadius)
//                    .opacity(toolbarOpacity)
                    
                .offset(y: toolbarOffset)
                .frame(width: deviceSize.width - 40, height: searchBarHeight)
                
            }
        }
        
    }
}

@available(iOS 15.0, *)
struct ADView_Previews: PreviewProvider {
    static var previews: some View {
         NavigationView {
//        Group {
            ADView()
            
//        }

         }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    var animatableData: CGFloat {
        get { radius }
        set { radius = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct HScrollView: View {
    var body: some View {
        Section {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<5) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100, height: 150)
                    }
                }
            }
            .padding(.leading, 20)
        }
    }
}


struct VScrollView: View {
    var body: some View {
        Section {
            VStack {
                ForEach(0..<5) { _ in
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 200,height: 150)
                }
            }
            .padding(.leading, 20)
        }
    }
}


@available(iOS 15.0, *)
struct ADHButtonStack: View {
    @Binding var cornerRadius: CGFloat
    
    var body: some View {
        HStack {
            Button {
                print("dsf")
                withAnimation {
                    cornerRadius -= 5
                }
            } label: {
                Label("Minus", systemImage: "minus")
            }
            .buttonStyle(.bordered)
            
            Button {
                print("dsf")
                withAnimation {
                    cornerRadius += 5
                }
            } label: {
                Label("Plus", systemImage: "plus")
            }
            .buttonStyle(.bordered)
            .padding()
        }
    }
}

