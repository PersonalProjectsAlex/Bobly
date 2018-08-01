
import Foundation
struct BaseTimeline : Codable {
    let in_reply_to_status_id : String?
    let is_quote_status : Bool?
    let source : String?
    let lang : String?
    let place : String?
    let retweet_count : Double?
    let favorited : Bool?
    let in_reply_to_screen_name : String?
    let id : Double?
    let retweeted : Bool?
    let text : String?
    let entities : Entities?
    let geo : String?
    let in_reply_to_user_id : String?
    let user : User?
    let favorite_count : Double?
    let coordinates : String?
    let possibly_sensitive : Bool?
    let created_at : String?
    let contributors : String?
    let id_str : String?
    let in_reply_to_user_id_str : String?
    let truncated : Bool?
    let extended_entities : Extended_entities?
    let in_reply_to_status_id_str : String?
    
    enum CodingKeys: String, CodingKey {
        
        case in_reply_to_status_id = "in_reply_to_status_id"
        case is_quote_status = "is_quote_status"
        case source = "source"
        case lang = "lang"
        case place = "place"
        case retweet_count = "retweet_count"
        case favorited = "favorited"
        case in_reply_to_screen_name = "in_reply_to_screen_name"
        case id = "id"
        case retweeted = "retweeted"
        case text = "text"
        case entities = "entities"
        case geo = "geo"
        case in_reply_to_user_id = "in_reply_to_user_id"
        case user = "user"
        case favorite_count = "favorite_count"
        case coordinates = "coordinates"
        case possibly_sensitive = "possibly_sensitive"
        case created_at = "created_at"
        case contributors = "contributors"
        case id_str = "id_str"
        case in_reply_to_user_id_str = "in_reply_to_user_id_str"
        case truncated = "truncated"
        case extended_entities = "extended_entities"
        case in_reply_to_status_id_str = "in_reply_to_status_id_str"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        in_reply_to_status_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id)
        is_quote_status = try values.decodeIfPresent(Bool.self, forKey: .is_quote_status)
        source = try values.decodeIfPresent(String.self, forKey: .source)
        lang = try values.decodeIfPresent(String.self, forKey: .lang)
        place = try values.decodeIfPresent(String.self, forKey: .place)
        retweet_count = try values.decodeIfPresent(Double.self, forKey: .retweet_count)
        favorited = try values.decodeIfPresent(Bool.self, forKey: .favorited)
        in_reply_to_screen_name = try values.decodeIfPresent(String.self, forKey: .in_reply_to_screen_name)
        id = try values.decodeIfPresent(Double.self, forKey: .id)
        retweeted = try values.decodeIfPresent(Bool.self, forKey: .retweeted)
        text = try values.decodeIfPresent(String.self, forKey: .text)
        entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
        geo = try values.decodeIfPresent(String.self, forKey: .geo)
        in_reply_to_user_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id)
        user = try values.decodeIfPresent(User.self, forKey: .user)
        favorite_count = try values.decodeIfPresent(Double.self, forKey: .favorite_count)
        coordinates = try values.decodeIfPresent(String.self, forKey: .coordinates)
        possibly_sensitive = try values.decodeIfPresent(Bool.self, forKey: .possibly_sensitive)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        contributors = try values.decodeIfPresent(String.self, forKey: .contributors)
        id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
        in_reply_to_user_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id_str)
        truncated = try values.decodeIfPresent(Bool.self, forKey: .truncated)
        extended_entities = try values.decodeIfPresent(Extended_entities.self, forKey: .extended_entities)
        in_reply_to_status_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id_str)
    }
    
}
