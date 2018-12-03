//
//  APIError.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

enum APIError: Error {
    case message(String)
    
    var localizedDescription: String {
        switch self {
        case .message(let string):
            return string
        }
    }
    
}
