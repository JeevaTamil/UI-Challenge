//
//  ABDiscoverView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI

struct ABDiscoverView: View {
    var body: some View {
        VStack {
            ABHeadingView(title: "Discover things to do")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(Discover.discoverStatic) { discover in
                        VStack(alignment: .leading) {
                            Image(discover.imgName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 250)
                                .cornerRadius(10)
                            VStack(alignment: .leading, spacing: 5) {
                                Text(discover.name)
                                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                                Text(discover.desc)
                                    .font(.system(size: 15, weight: .regular, design: .rounded))
                            }
                            .frame(alignment: .leading)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct ABDiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        ABDiscoverView()
    }
}
