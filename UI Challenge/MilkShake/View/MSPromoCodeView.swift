//
//  MSPromoCodeView.swift
//  MSPromoCodeView
//
//  Created by Azhagusundaram Tamil on 09/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSPromoCodeView: View {
    @State private var promocode: String = ""
    @Environment(\.deviceSize) var deviceSize
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField(text: $promocode, prompt: Text("Enter your promocode")) {
                Label("Enter your promocode", systemImage: "tag")
            }
            .textFieldStyle(.roundedBorder)
            Spacer()
            Button {
                
            } label: {
                Text("Apply")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
            }
            .buttonStyle(CustomButtonStyle())

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Label("back", systemImage: "arrow.left")
                        .foregroundColor(.black)
                    //                        .padding(.leading)
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("Promocode")
                    .fontWeight(.semibold)
            }
        }
    }
}

@available(iOS 15.0, *)
struct MSPromoCodeView_Previews: PreviewProvider {
    static var previews: some View {
        MSPromoCodeView()
    }
}


struct CustomButtonStyle: ButtonStyle {
    @Environment(\.deviceSize) var deviceSize
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: configuration.isPressed ? deviceSize.width - 60 : deviceSize.width - 50, height: configuration.isPressed ? 45 : 50)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            .opacity(configuration.isPressed ? 0.5 : 1)
        
        
    }
}
