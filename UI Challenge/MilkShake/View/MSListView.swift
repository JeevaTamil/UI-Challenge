//
//  MSListView.swift
//  MSListView
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSListView: View {
    @EnvironmentObject var viewModel: MSViewModel
    @State var showCart: Bool = false
    
    let title: String = "Choose your favorite smoothie"
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("bg")
        
            NavigationLink(isActive: $showCart) {
                MSCartView()
            } label: {
                EmptyView()
            }
            
            ScrollView(showsIndicators: false) {
                ForEach(Milkshake.staticData) { ms in
                    MSCardView(milkshake: ms)
                }
                .padding(.top)
            }
           
            if(!viewModel.baggedItems.isEmpty) {
                MSBottomSheetView()
                    .animation(.default)
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .environmentObject(viewModel)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    Label("Person", systemImage: "person")
                        .foregroundColor(.black)
                        .padding(.leading)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showCart.toggle()
                } label: {
                    Label("Bag", systemImage: "takeoutbag.and.cup.and.straw")
                        .foregroundColor(.black)
                        .padding(.trailing)
                        
                }
                .badge(viewModel.totalItems)
            }
            
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "snowflake")
                        .font(.caption)
                    
                    Text("Milkshake")
                        .fixedSize()
                }
            }
        }
    }
}

@available(iOS 15.0, *)
struct MSListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MSListView()
        }
    }
}

