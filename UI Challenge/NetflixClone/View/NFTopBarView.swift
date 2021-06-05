//
//  NFTopBarView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI


struct NFTopBarView: View {
    var body: some View {
        VStack {
            HStack {
                Image("nf_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Spacer()
                NFTopBarButtonView(title: "Series")
                Spacer()
                NFTopBarButtonView(title: "Films")
                Spacer()
                NFTopBarButtonView(title: "My Lists")
                    .padding(.trailing)
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}


struct NFTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.red
            NFTopBarView()
           
        }
    }
}

struct NFTopBarButtonView: View {
    var title: String
    var body: some View {
        Button(action: {}) {
            Text(title)
        }
        .buttonStyle(NFTopBarButtonStyle())
    }
}

struct NFTopBarButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white.opacity(0.5) : .white)
    }
}


