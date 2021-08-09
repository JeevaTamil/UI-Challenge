//
//  MSViewModel.swift
//  MSViewModel
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import Foundation

class MSViewModel: ObservableObject {
    @Published var baggedItems: [Milkshake] = []
    @Published var total: Int = 0
    @Published var totalItems: Int = 0
    
    func add(milkshake: Milkshake) {
        guard var selectedMS = baggedItems.filter({ $0.id == milkshake.id }).first else {
            baggedItems.append(milkshake)
            totalAmount()
            return }
        selectedMS.numOfItem += 1
        if !baggedItems.filter({ $0.id == milkshake.id }).isEmpty {
            baggedItems = baggedItems.filter{ $0.id != milkshake.id }
        }
        baggedItems.append(selectedMS)
        
        totalAmount()
    }
    
    func totalAmount() {
        total = baggedItems.map{ $0.price * $0.numOfItem }.reduce(.zero, +)
        totalItems = baggedItems.map{ $0.numOfItem }.reduce(.zero, +)
    }
    
    func remove(milkshake: Milkshake) {
        guard var removedItem = baggedItems.filter({ $0.id == milkshake.id }).first else { return }
        if removedItem.numOfItem > 1 {
            baggedItems = baggedItems.filter{ $0.id != milkshake.id }
            removedItem.numOfItem -= 1
            baggedItems.append(removedItem)
        } else {
            baggedItems = baggedItems.filter{ $0.id != milkshake.id }
        }
        totalAmount()
    }
    
    
    
}
