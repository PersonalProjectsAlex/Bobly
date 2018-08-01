//
//  ScheduleData.swift
//  boblyoutline
//
//  Created by Mac on 18/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
struct ScheduleData : Codable {
    let completed_at : String?
    let id_str : String?
    let text : String?
    let user_id : String?
    let scheduled_status : String?
    let id : Int?
    let media_ids : [String]?
    let nullcast : Bool?
    let created_at : String?
    let scheduled_at : String?
    let card_uri : String?
    let updated_at : String?
    let tweet_id : String?
    let media_keys : [String]?
    
    enum CodingKeys: String, CodingKey {
        
        case completed_at = "completed_at"
        case id_str = "id_str"
        case text = "text"
        case user_id = "user_id"
        case scheduled_status = "scheduled_status"
        case id = "id"
        case media_ids = "media_ids"
        case nullcast = "nullcast"
        case created_at = "created_at"
        case scheduled_at = "scheduled_at"
        case card_uri = "card_uri"
        case updated_at = "updated_at"
        case tweet_id = "tweet_id"
        case media_keys = "media_keys"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        completed_at = try values.decodeIfPresent(String.self, forKey: .completed_at)
        id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
        text = try values.decodeIfPresent(String.self, forKey: .text)
        user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
        scheduled_status = try values.decodeIfPresent(String.self, forKey: .scheduled_status)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        media_ids = try values.decodeIfPresent([String].self, forKey: .media_ids)
        nullcast = try values.decodeIfPresent(Bool.self, forKey: .nullcast)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        scheduled_at = try values.decodeIfPresent(String.self, forKey: .scheduled_at)
        card_uri = try values.decodeIfPresent(String.self, forKey: .card_uri)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
        tweet_id = try values.decodeIfPresent(String.self, forKey: .tweet_id)
        media_keys = try values.decodeIfPresent([String].self, forKey: .media_keys)
    }
    
}
