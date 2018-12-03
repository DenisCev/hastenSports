//
//  Section.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Foundation

import UIKit

struct Section<T> {
    var header: String?
    var footer: String?
    var items: [T] = []
    
    init(items: [T]) {
        self.items = items
    }
}
