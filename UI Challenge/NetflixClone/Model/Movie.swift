//
//  Movie.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import Foundation


struct Movie: Identifiable {
    let id = UUID()
    let name: String
    let imgName: String
    let videoURL: URL?
    
    static let movies = [
        Movie(name: "Money Heist", imgName: "Money-Heist", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "Friends", imgName: "friends", videoURL: Bundle.main.url(forResource: "friends_trailer", withExtension: "mp4")),
        Movie(name: "Breaking Bad", imgName: "breakingbad", videoURL: Bundle.main.url(forResource: "breakingbad", withExtension: "mp4")),
        Movie(name: "13 Reasons Why", imgName: "13reasonswhy", videoURL: Bundle.main.url(forResource: "13reasonswhy", withExtension: "mp4")),
        Movie(name: "Stranger Things", imgName: "strangerthings", videoURL: Bundle.main.url(forResource: "strangerthings", withExtension: "mp4")),
        Movie(name: "Dark", imgName: "dark", videoURL: Bundle.main.url(forResource: "dark", withExtension: "mp4"))
    ]
    
    static let trending = [
        Movie(name: "Army of the Dead", imgName: "armyofthedead", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "Dating Around", imgName: "datingaround", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "Friends Reunion", imgName: "friends_reunion", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "House of Cards", imgName: "houseofcards", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "Suits", imgName: "suits", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
        Movie(name: "Originals", imgName: "originals", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4")),
    ]
    
        
    static let moneyHeist = Movie(name: "Money Heist", imgName: "Money-Heist", videoURL: Bundle.main.url(forResource: "MoneyHeist", withExtension: "mp4"))
    static let friends = Movie(name: "Friends", imgName: "friends", videoURL: Bundle.main.url(forResource: "friends_trailer", withExtension: "mp4"))
    static let breakingbad = Movie(name: "Breaking Bad", imgName: "breakingbad", videoURL: Bundle.main.url(forResource: "breakingbad", withExtension: "mp4"))
}

extension Movie {
    
    
    
}
