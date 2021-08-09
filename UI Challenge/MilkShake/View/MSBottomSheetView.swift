//
//  MSBottomSheetView.swift
//  MSBottomSheetView
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MSBottomSheetView: View {
    @EnvironmentObject var viewModel: MSViewModel
    
    @State var xOffset: CGFloat = .zero
    @State var yOffset: CGFloat = .zero
    @State var selectedMilkshake: Milkshake? = nil
    @State var navigatecart: Bool = false
    
    var body: some View {
        HStack {
            HStack(spacing: -10) {
                ForEach(viewModel.baggedItems) { item in
                    Image(item.imgName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(
                            Circle()
                        )
                        .overlay(Circle().stroke())
                        .overlay(
                            Text(item.numOfItem > 1 ? "\(item.numOfItem)" : "")
                        )
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    withAnimation(Animation.spring()) {
                                        xOffset = value.translation.width
                                        yOffset = value.translation.height
                                    }
                                    selectedMilkshake = item
                                })
                                .onEnded({ _ in
                                    withAnimation(Animation.spring()) {
                                        if yOffset < -100 {
                                            viewModel.remove(milkshake: item)
                                        }
                                        selectedMilkshake = nil
                                    }
                                })
                        )
                        .offset(
                            x: selectedMilkshake == item ? xOffset : 0,
                            y: selectedMilkshake == item ? yOffset : 0
                        )
                }
            }
            
            Spacer()
            
            NavigationLink {
                MSCartView()
                    .environmentObject(viewModel)
            } label: {
                Label("$ \(viewModel.total)", systemImage: "takeoutbag.and.cup.and.straw")
                    .padding(.horizontal, 25)
                    .padding(.vertical, 12)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
        .padding()
        .frame(height: 120, alignment: .top)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
        )
        
    }
}

@available(iOS 15.0, *)
struct MSBottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        MSBottomSheetView()
    }
}
