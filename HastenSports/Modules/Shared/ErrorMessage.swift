//
//  ErrorMessage.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Alamofire

extension Error {
    
    var message: String? {
        if self is AFError {
            return "Unknown error"
        } else if let error = self as? APIError {
            return error.localizedDescription
        } else {
            return self.localizedDescription
        }
    }
    
}
