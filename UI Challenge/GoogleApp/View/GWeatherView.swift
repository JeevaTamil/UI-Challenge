//
//  GWeatherView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 27/06/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct GWeatherView: View {
    var body: some View {
        HStack(spacing: 1) {
            Image(systemName: "cloud.sun.fill")
                .symbolRenderingMode(.multicolor)
            Text("24°C")
            Image(systemName: "location.fill")
                .symbolRenderingMode(.multicolor)
                .scaleEffect(0.7)
        }
        .padding(5)
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .stroke()
                .foregroundStyle(.secondary)
        )
    }
}

@available(iOS 15.0, *)
struct GWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        GWeatherView()
    }
}
