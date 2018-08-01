

import Foundation
struct Status : Codable {
	let created_at : String?
	let in_reply_to_status_id : String?
	let is_quote_status : Bool?
	let source : String?
	let in_reply_to_status_id_str : String?
	let lang : String?
	let place : String?
	let favorite_count : Double?
	let coordinates : String?
	let retweet_count : Double?
	let favorited : Bool?
	let in_reply_to_screen_name : String?
	let id : Double?
	let retweeted : Bool?
	let possibly_sensitive : Bool?
	let text : String?
	let in_reply_to_user_id_str : String?
	let id_str : String?
	let contributors : String?
	let entities : Entities?
	let truncated : Bool?
	let geo : String?
	let in_reply_to_user_id : String?
	let extended_entities : Extended_entities?

	enum CodingKeys: String, CodingKey {

		case created_at = "created_at"
		case in_reply_to_status_id = "in_reply_to_status_id"
		case is_quote_status = "is_quote_status"
		case source = "source"
		case in_reply_to_status_id_str = "in_reply_to_status_id_str"
		case lang = "lang"
		case place = "place"
		case favorite_count = "favorite_count"
		case coordinates = "coordinates"
		case retweet_count = "retweet_count"
		case favorited = "favorited"
		case in_reply_to_screen_name = "in_reply_to_screen_name"
		case id = "id"
		case retweeted = "retweeted"
		case possibly_sensitive = "possibly_sensitive"
		case text = "text"
		case in_reply_to_user_id_str = "in_reply_to_user_id_str"
		case id_str = "id_str"
		case contributors = "contributors"
		case entities = "entities"
		case truncated = "truncated"
		case geo = "geo"
		case in_reply_to_user_id = "in_reply_to_user_id"
		case extended_entities = "extended_entities"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		in_reply_to_status_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id)
		is_quote_status = try values.decodeIfPresent(Bool.self, forKey: .is_quote_status)
		source = try values.decodeIfPresent(String.self, forKey: .source)
		in_reply_to_status_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id_str)
		lang = try values.decodeIfPresent(String.self, forKey: .lang)
		place = try values.decodeIfPresent(String.self, forKey: .place)
		favorite_count = try values.decodeIfPresent(Double.self, forKey: .favorite_count)
		coordinates = try values.decodeIfPresent(String.self, forKey: .coordinates)
		retweet_count = try values.decodeIfPresent(Double.self, forKey: .retweet_count)
		favorited = try values.decodeIfPresent(Bool.self, forKey: .favorited)
		in_reply_to_screen_name = try values.decodeIfPresent(String.self, forKey: .in_reply_to_screen_name)
		id = try values.decodeIfPresent(Double.self, forKey: .id)
		retweeted = try values.decodeIfPresent(Bool.self, forKey: .retweeted)
		possibly_sensitive = try values.decodeIfPresent(Bool.self, forKey: .possibly_sensitive)
		text = try values.decodeIfPresent(String.self, forKey: .text)
		in_reply_to_user_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id_str)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		contributors = try values.decodeIfPresent(String.self, forKey: .contributors)
		entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
		truncated = try values.decodeIfPresent(Bool.self, forKey: .truncated)
		geo = try values.decodeIfPresent(String.self, forKey: .geo)
		in_reply_to_user_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id)
		extended_entities = try values.decodeIfPresent(Extended_entities.self, forKey: .extended_entities)
	}

}
