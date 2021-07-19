//
//  ABExploreView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 01/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct ABExploreView: View {
    
    @State private var testfield: CGFloat = .zero
    @State private var search = ""
    @State private var covidOffset: CGFloat = .zero
    @Environment(\.deviceSize) var deviceSize
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(showsIndicators: false) {
                ZStack {
                    VStack {
                        ABImageView()
                        VStack(spacing: 30) {
                            ABExploreNearView()
                            ABLiveAnyView()
                            ABGreatOutView()
                            ABDiscoverView()
                        }
                        .zIndex(0)
                    }
                    ABSearchView(search: $search, covidOffset: $covidOffset)
                        .zIndex(1)
                }
                .padding(.bottom)
            }
            .offset(y: covidOffset == 0 ? 80 : 0 )
            if covidOffset == 0 {
                ABCovidView(covidOffset: $covidOffset)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

@available(iOS 15.0, *)
struct ABExploreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ABExploreView()
        }
    }
}

