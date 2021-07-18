//
//  IRModel.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 02/07/21.
//

import Foundation

struct IRModel: Identifiable, Codable {
    var id = UUID()
    var userName: String
    var description: String
    var audioName: String
    var likeCount: Int
    var commentCount: Int
    var videoURL: URL?

    static let mockData = [
        IRModel(userName: "varun.adithya", description: "", audioName: "", likeCount: 32, commentCount: 234, videoURL: Bundle.main.url(forResource: "ig1", withExtension: "mp4")),
        IRModel(userName: "varun.adithya", description: "", audioName: "", likeCount: 32, commentCount: 234, videoURL: Bundle.main.url(forResource: "ig2", withExtension: "mp4")),
        IRModel(userName: "varun.adithya", description: "", audioName: "", likeCount: 32, commentCount: 234, videoURL: Bundle.main.url(forResource: "ig3", withExtension: "mp4")),
    ]
}
