//
//  ABHeadingView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI


struct ABHeadingView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 24, weight: .bold, design: .rounded))
            Spacer()
        }.padding(.leading)
    }
}


struct ABHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        ABHeadingView(title: "fdsdfsd")
    }
}
