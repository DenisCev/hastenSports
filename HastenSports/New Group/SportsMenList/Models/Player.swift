//
//  Player.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//
import ObjectMapper

class Player: Mappable {
    var image: String?
    var surname, name, date: String?
    
    init(image: String?, surname: String?, name: String?, date: String?) {
        self.image = image
        self.surname = surname
        self.name = name
        self.date = date
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        image <- map["image"]
        surname <- map["surname"]
        name <- map["name"]
        date <- map["date"]
    }
}
