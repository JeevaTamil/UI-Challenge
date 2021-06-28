//
//  ContentView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 15/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
           UIListView()
            .navigationTitle("UI Challenges")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private struct DeviceSize: EnvironmentKey {
    static let defaultValue = UIScreen.main.bounds.size
}

extension EnvironmentValues {
    var deviceSize: CGSize {
        get { self[DeviceSize.self] }
        set { self[DeviceSize.self] = newValue}
    }
}
