//
//  UIListView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 15/02/21.
//

import SwiftUI



struct UIModel: Identifiable {
    let id = UUID()
    let name: String
    let view: AnyView
}


struct UIListView: View {
    @State private var viewList = [
        UIModel(name: "Scrollview progress bar", view: AnyView(UIScrollView())),
        UIModel(name: "Inprogress", view: AnyView(InProgressView())),
        UIModel(name: "Loading", view: AnyView(UICProgressView())),
        UIModel(name: "Netflix", view: AnyView(NFHomeView()))
      
    
    ]
    var body: some View {
        List {
            ForEach(viewList) { view in
                NavigationLink(
                    destination: view.view,
                    label: {
                        Text(view.name)
                    })
            }
        }
        .listStyle(InsetGroupedListStyle())
        
    }
}

struct UIListView_Previews: PreviewProvider {
    static var previews: some View {
        UIListView()
    }
}
