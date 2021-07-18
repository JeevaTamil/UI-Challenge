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

var viewList = [
    UIModel(name: "Scrollview progress bar", view: AnyView(UIScrollView())),
    UIModel(name: "Inprogress", view: AnyView(InProgressView())),
    UIModel(name: "Loading", view: AnyView(UICProgressView())),
    UIModel(name: "Netflix", view: AnyView(NFHomeView()))
]

struct UIListView: View {
    init() {
        if #available(iOS 15.0, *) {
            viewList.append(UIModel(name: "Google app UI", view: AnyView(GHomeView())))
            viewList.append(UIModel(name: "Airbnb", view: AnyView(ABExploreView())))
             viewList.append(UIModel(name: "IG Reels", view: AnyView(IGReelsView())))
            viewList.append(UIModel(name: "AD ", view: AnyView(ADView())))
            
        }
    }
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
