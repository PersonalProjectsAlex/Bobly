

import Foundation
struct ADSParams : Codable {
    let text : String?
    let scheduled_at : String?
    let as_user_id : Int?
    let nullcast : Bool?
    
    enum CodingKeys: String, CodingKey {
        
        case text = "text"
        case scheduled_at = "scheduled_at"
        case as_user_id = "as_user_id"
        case nullcast = "nullcast"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        text = try values.decodeIfPresent(String.self, forKey: .text)
        scheduled_at = try values.decodeIfPresent(String.self, forKey: .scheduled_at)
        as_user_id = try values.decodeIfPresent(Int.self, forKey: .as_user_id)
        nullcast = try values.decodeIfPresent(Bool.self, forKey: .nullcast)
    }
    
}
