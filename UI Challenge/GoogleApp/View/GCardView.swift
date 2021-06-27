//
//  GCardView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 27/06/21.
//

import SwiftUI


@available(iOS 15.0, *)
struct GCardView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.regularMaterial)
                .frame(height: 200)
            Text("qwrerwteyijywetyifgggufghhfdgs dfgulfhgfggufghgfglglsfghsfgufgfifgfguaisgiasgduf")
                .foregroundStyle(.quaternary)
            HStack {
                Circle()
                    .fill(.regularMaterial)
                    .frame(width: 24, height: 24)
                
                Text("hergndfg/jfgasfgshgghfgk")
                    .foregroundStyle(.quaternary)
                Spacer()
                Circle()
                    .fill(.regularMaterial)
                    .frame(width: 24, height: 24)
                Circle()
                    .fill(.regularMaterial)
                    .frame(width: 24, height: 24)
                Circle()
                    .fill(.regularMaterial)
                    .frame(width: 24, height: 24)
            }
        }
        .redacted(reason: .placeholder)
        .padding()
    }
}

@available(iOS 15.0, *)
struct GCardView_Previews: PreviewProvider {
    static var previews: some View {
        GCardView()
    }
}
