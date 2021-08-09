//
//  MSCardView.swift
//  MSCardView
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSCardView: View {
    @EnvironmentObject var viewModel: MSViewModel
    
    var milkshake: Milkshake
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(milkshake.imgName)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .cornerRadius(10)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(milkshake.name)
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                    Text("$ \(milkshake.price)")
                        .font(.system(size: 22, weight: .regular, design: .rounded))
                }
                Spacer()
                Button {
                    viewModel.add(milkshake: self.milkshake)
                } label: {
                   Image(systemName: "plus")
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .tint(.black)
               
                
            }
            
        }
        .padding(.horizontal)
    }
}

@available(iOS 15.0, *)
struct MSCardView_Previews: PreviewProvider {
    static var previews: some View {
        MSCardView(milkshake: Milkshake.staticData.first!)
    }
}
