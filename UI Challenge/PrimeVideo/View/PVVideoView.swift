//
//  PVVideoView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI

struct PVVideoView: View {
    var body: some View {
        VideoPlayerView( movie: .moneyHeist)
    }
}

struct PVVideoView_Previews: PreviewProvider {
    static var previews: some View {
        PVVideoView()
    }
}
