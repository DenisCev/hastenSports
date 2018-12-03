//
//  PlayerListElement.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//
import ObjectMapper

typealias PlayerList = [PlayerListElement]

class PlayerListElement: Mappable {
    var players: [Player]?
    var type, title: String?
    
    init(players: [Player]?, type: String?, title: String?) {
        self.players = players
        self.type = type
        self.title = title
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        players <- map["players"]
        type <- map["type"]
        title <- map["title"]
    }
    
}
