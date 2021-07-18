//
//  ABCovidView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI

struct ABCovidView: View {
    @Binding var covidOffset: CGFloat
    @Environment(\.deviceSize) var deviceSize
    
    var body: some View {
        Text("Get the latest on our COVID-19 respose")
            .font(.subheadline)
            .underline()
            .padding(.bottom, 10)
            .frame(width: deviceSize.width, height: 80, alignment: .bottom)
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white.opacity(0.5))
            .offset(y: covidOffset)
    }
}
