//
//  SportMenListService.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

typealias SportsMenListCompletionBlock = (DataResponse<PlayerList>) -> (Void)

class SportsMenListService: NSObject {
    @discardableResult
    func getSportsMenList (_ completion: @escaping SportsMenListCompletionBlock) -> DataRequest {
        
        let url = "\(APIConstants.URLBase)\(APIConstants.SportsMenJSON)"
        let response = Alamofire.request(url).responseArray(completionHandler: completion)
        return response
    }
    
}
