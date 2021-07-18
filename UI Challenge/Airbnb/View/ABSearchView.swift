//
//  ABSearchView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI


struct ABSearchView: View {
    @Binding var search: String
    @Binding var covidOffset: CGFloat
    
    var body: some View {
        GeometryReader { geoProxy in
            TextField("", text: $search)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: .infinity)
                        .fill(.white)
                        .shadow(color: .secondary.opacity(0.3), radius: 1, x: 2, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: .infinity)
                                .stroke(Color.secondary.opacity(0.3), lineWidth: 1)
                        )
                )
                .overlay(
                    Label("Where are you going?", systemImage: "magnifyingglass")
                        .font(.system(.callout, design: .rounded))
                        .foregroundColor(.black)
                )
                .padding()
                .onChange(of: geoProxy.frame(in: .global).minY) { newValue in
                    if newValue < 53 {
                        withAnimation {
                            covidOffset = -100
                        }
                    } else {
                        withAnimation {
                            covidOffset = .zero
                        }
                    }
                }
                .offset(y: covidOffset == 0 ? 0 : -geoProxy.frame(in: .global).minY + 20)
//                .offset(y:  -geoProxy.frame(in: .global).minY)
        }
        .zIndex(1)
    }
}

