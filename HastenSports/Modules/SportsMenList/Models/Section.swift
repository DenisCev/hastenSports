//
//  Section.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Foundation

import UIKit

struct Section<PlayerListElement> {
    var header: String?
    var footer: String?
    var items: [Player] = []
    
    init(items: [Player], header: String?) {
        self.header = header
        self.items = items
    }
}
