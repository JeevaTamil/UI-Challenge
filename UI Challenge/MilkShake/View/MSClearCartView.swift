//
//  MSClearCartView.swift
//  MSClearCartView
//
//  Created by Azhagusundaram Tamil on 09/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSClearCartView: View {
    @EnvironmentObject var viewModel: MSViewModel
    @Environment(\.dismiss) var dismiss
    @Binding var showClearCart: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "bag.badge.minus")
                .font(.largeTitle)
                .symbolRenderingMode(.multicolor)
                .foregroundStyle(.green, .red)
            
            Text("Clean your cart?")
                .font(.system(size: 18, weight: .heavy, design: .rounded))
            
            Text("""
                    Are you sure you want to delete all the
                    items from your cart?
                    """)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            
            Button {
                viewModel.baggedItems.removeAll()
                dismiss()
            } label: {
                Text("Yes, please")
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
            }
            .buttonStyle(CustomButtonStyle())
            
            Button {
                withAnimation {
                    showClearCart.toggle()
                }
            } label: {
                Text("Cancel")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
        )
    }
}

@available(iOS 15.0, *)
struct MSClearCartView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.secondary.opacity(0.3)
            MSClearCartView( showClearCart: .constant(true))
        }
    }
}
