

import Foundation
struct Favourites : Codable {
	let coordinates : String?
	let truncated : Bool?
	let favorited : Bool?
	let created_at : String?
	let id_str : String?
	let in_reply_to_user_id_str : String?
	let entities : Entities?
	let text : String?
	let contributors : String?
	let id : Int?
	let retweet_count : Int?
	let in_reply_to_status_id_str : String?
	let geo : String?
	let retweeted : Bool?
	let in_reply_to_user_id : String?
	let in_reply_to_screen_name : String?
	let source : String?
	let user : User?
	let place : Place?
	let in_reply_to_status_id : String?

	enum CodingKeys: String, CodingKey {

		case coordinates = "coordinates"
		case truncated = "truncated"
		case favorited = "favorited"
		case created_at = "created_at"
		case id_str = "id_str"
		case in_reply_to_user_id_str = "in_reply_to_user_id_str"
		case entities = "entities"
		case text = "text"
		case contributors = "contributors"
		case id = "id"
		case retweet_count = "retweet_count"
		case in_reply_to_status_id_str = "in_reply_to_status_id_str"
		case geo = "geo"
		case retweeted = "retweeted"
		case in_reply_to_user_id = "in_reply_to_user_id"
		case in_reply_to_screen_name = "in_reply_to_screen_name"
		case source = "source"
		case user = "user"
		case place = "place"
		case in_reply_to_status_id = "in_reply_to_status_id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		coordinates = try values.decodeIfPresent(String.self, forKey: .coordinates)
		truncated = try values.decodeIfPresent(Bool.self, forKey: .truncated)
		favorited = try values.decodeIfPresent(Bool.self, forKey: .favorited)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		in_reply_to_user_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id_str)
		entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
		text = try values.decodeIfPresent(String.self, forKey: .text)
		contributors = try values.decodeIfPresent(String.self, forKey: .contributors)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		retweet_count = try values.decodeIfPresent(Int.self, forKey: .retweet_count)
		in_reply_to_status_id_str = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id_str)
		geo = try values.decodeIfPresent(String.self, forKey: .geo)
		retweeted = try values.decodeIfPresent(Bool.self, forKey: .retweeted)
		in_reply_to_user_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_user_id)
		in_reply_to_screen_name = try values.decodeIfPresent(String.self, forKey: .in_reply_to_screen_name)
		source = try values.decodeIfPresent(String.self, forKey: .source)
		user = try values.decodeIfPresent(User.self, forKey: .user)
		place = try values.decodeIfPresent(Place.self, forKey: .place)
		in_reply_to_status_id = try values.decodeIfPresent(String.self, forKey: .in_reply_to_status_id)
	}

}
