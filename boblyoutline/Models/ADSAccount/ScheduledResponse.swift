//
//  ScheduledResponse.swift
//  boblyoutline
//
//  Created by Mac on 18/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation

struct ScheduledResponse : Codable {
    let request : Request?
    let data : ScheduleData?
    
    enum CodingKeys: String, CodingKey {
        
        case request = "request"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        request = try values.decodeIfPresent(Request.self, forKey: .request)
        data = try values.decodeIfPresent(ScheduleData.self, forKey: .data)
    }
    
}
