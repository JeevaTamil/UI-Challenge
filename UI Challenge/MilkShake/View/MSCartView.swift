//
//  MSCartView.swift
//  MSCartView
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSCartView: View {
    @EnvironmentObject var viewModel: MSViewModel
    @Environment(\.dismiss) var dismiss
    
    @State private var showClearCart: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                ScrollView {
                    HStack {
                        Text("Your order")
                            .bold()
                        Spacer()
                    }
                    .padding()
                    
                    ForEach(viewModel.baggedItems) { item in
                        HStack {
                            Image(item.imgName)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .bold()
                                Text("$ \(item.price)")
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 20) {
                                Button {
                                    viewModel.remove(milkshake: item)
                                } label: {
                                    Image(systemName: "minus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.black)
                                    
                                }
                                
                                Text("\(item.numOfItem)")
                                    .font(.system(size: 16, weight: .regular, design: .monospaced))
                                    .padding(10)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.secondary.opacity(0.1))
                                    )
                                
                                Button {
                                    viewModel.add(milkshake: item)
                                } label: {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: MSPromoCodeView()) {
                        Label("Do you have any promo code?", systemImage: "tag")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    .padding(.top, 30)

                    
                }
                Spacer()
                
                HStack {
                    Text("Total items")
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("$ \(viewModel.total)")
                        .bold()
                }
                .padding(.bottom, 30)
                
                Button {
                    
                } label: {
                    Text("Go to checkout $\(viewModel.total)")
                        .bold()
                        
                }
                .buttonStyle(CustomButtonStyle())
                .padding(.bottom)
                
                
                
            }
            .padding(.horizontal)
            
            if showClearCart {
                Color.secondary.opacity(showClearCart ? 0.5 : 1)
                    .ignoresSafeArea(.all)
                MSClearCartView(showClearCart: $showClearCart)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Label("back", systemImage: "arrow.left")
                        .foregroundColor(.black)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(role: .destructive) {
                    withAnimation {
                        showClearCart.toggle()
                    }
                } label: {
                    Text("Clear")
                }
                .foregroundColor(.red)
            }
            
            ToolbarItem(placement: .principal) {
                Text("Cart")
                    .fontWeight(.semibold)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

@available(iOS 15.0, *)
struct MSCartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MSCartView()
        }
    }
}
