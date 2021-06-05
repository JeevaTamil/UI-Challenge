//
//  NFQuickActionView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI

struct NFQuickActionView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                NFQuckActionButtonView(title: "My List", imgName: "plus")
                Spacer()
                NFQuckActionPlayButtonView()
                Spacer()
                NFQuckActionButtonView(title: "info", imgName: "info.circle")
            }
            .padding()
        }.padding(.horizontal)
    }
}

struct NFQuickActionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.red
            NFQuickActionView()
        }
        
    }
}

struct NFQuckActionButtonView: View {
    var title: String
    var imgName: String
    
    var size: CGFloat = 15
    
    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(systemName: imgName)
                    .resizable()
                    .frame(width: size, height: size, alignment: .center)
                Text(title)
                    .font(.footnote)
            }
        })
        .buttonStyle(NFTopBarButtonStyle())
    }
}

struct NFQuckActionPlayButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: "play.fill")
                Text("Play")
            }
        })
        .buttonStyle(NFQuckActionPlayButtonStyle())
    }
}

struct NFQuckActionPlayButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 45)
            .padding(.vertical, 7)
            .background(Color.white)
            .foregroundColor(configuration.isPressed ? .black.opacity(0.5) : .black)
    }
}
