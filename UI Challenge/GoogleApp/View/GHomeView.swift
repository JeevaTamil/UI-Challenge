//
//  GHomeView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 27/06/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct GHomeView: View {
    
    @State private var searchBox: String = ""
    @State private var offset: CGFloat = .zero
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    GWeatherView()
                    Spacer()
                    Image("dev1")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                }
                .padding()
                
                GeometryReader { geo in
                    HStack {
                        Spacer()
                        Image("google")
                            .resizable()
                            .scaledToFit()
                        Spacer()
                    }
                    .onChange(of: geo.frame(in: .global).minY) { newValue in
                        if newValue <= -44 {
                            offset = -44
                        } else if newValue < 0 {
                            offset = newValue
                        } else {
                            offset = .zero
                        }
                    }
                }.frame(height: 100, alignment: .center)
            }
            
            ZStack {
                VStack {
                    ForEach(0..<5) { _ in
                        GCardView()
                    }
                }
                .offset(y: 50)
                .zIndex(0)
                
                SearchBoxView(searchBox: $searchBox, offset: $offset)
            }
        }
        .navigationBarHidden(true)
    }
}

@available(iOS 15.0, *)
struct GHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GHomeView()
                .preferredColorScheme(.light)
        }
    }
}

@available(iOS 15.0, *)
struct SearchBoxView: View {
    @Binding var searchBox: String
    @Binding var offset: CGFloat
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        GeometryReader { geo in
            HStack {
                VStack(spacing: 0) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .padding(3)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.tertiary)
                    
                    Image("g")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .offset(y : 20)
                }
                .frame(width: 24, height: 24, alignment: .top)
                .offset(y: offset)
                TextField("Search...", text: $searchBox)
                Image("gmic")
                    .resizable()
                    .frame(width: 30, height: 30)
                Image("glens")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(.thinMaterial)
            )
            .mask(
                RoundedRectangle(cornerRadius: 30)
            )
            .offset(y: geo.frame(in: .global).minY < 50 ? -geo.frame(in: .global).minY + 50 : .zero )
            .padding(.horizontal)
        }
        .shadow(color: colorScheme == .dark ? .clear : .secondary.opacity(0.2), radius: 3, x: 2, y: 5)
        
       
    }
}
