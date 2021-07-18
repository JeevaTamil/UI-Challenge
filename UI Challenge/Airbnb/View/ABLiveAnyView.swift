//
//  ABLiveAnyView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI


struct ABLiveAnyView: View {
    var body: some View {
        VStack {
            ABHeadingView(title: "Live Anywhere")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(Live.listStatic) { live in
                        VStack(alignment: .leading) {
                            Image(live.imgName)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .cornerRadius(8)
                            
                            Text(live.name)
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ABLiveAnyView_Previews: PreviewProvider {
    static var previews: some View {
        ABLiveAnyView()
    }
}
