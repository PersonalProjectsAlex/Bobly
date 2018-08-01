

import Foundation
struct UserFavourite : Codable {
	let profile_sidebar_fill_color : String?
	let profile_background_tile : Bool?
	let profile_sidebar_border_color : String?
	let name : String?
	let profile_image_url : String?
	let location : String?
	let created_at : String?
	let follow_request_sent : Bool?
	let is_translator : Bool?
	let id_str : String?
	let profile_link_color : String?
	let entities : Entities?
	let favourites_count : Int?
	let url : String?
	let default_profile : Bool?
	let contributors_enabled : Bool?
	let profile_image_url_https : String?
	let utc_offset : Int?
	let id : Int?
	let listed_count : Int?
	let profile_use_background_image : Bool?
	let followers_count : Int?
	let protected : Bool?
	let profile_text_color : String?
	let lang : String?
	let profile_background_color : String?
	let time_zone : String?
	let verified : Bool?
	let profile_background_image_url_https : String?
	let description : String?
	let geo_enabled : Bool?
	let notifications : Bool?
	let default_profile_image : Bool?
	let friends_count : Int?
	let profile_background_image_url : String?
	let statuses_count : Int?
	let following : Bool?
	let screen_name : String?
	let show_all_inline_media : Bool?

	enum CodingKeys: String, CodingKey {

		case profile_sidebar_fill_color = "profile_sidebar_fill_color"
		case profile_background_tile = "profile_background_tile"
		case profile_sidebar_border_color = "profile_sidebar_border_color"
		case name = "name"
		case profile_image_url = "profile_image_url"
		case location = "location"
		case created_at = "created_at"
		case follow_request_sent = "follow_request_sent"
		case is_translator = "is_translator"
		case id_str = "id_str"
		case profile_link_color = "profile_link_color"
		case entities = "entities"
		case favourites_count = "favourites_count"
		case url = "url"
		case default_profile = "default_profile"
		case contributors_enabled = "contributors_enabled"
		case profile_image_url_https = "profile_image_url_https"
		case utc_offset = "utc_offset"
		case id = "id"
		case listed_count = "listed_count"
		case profile_use_background_image = "profile_use_background_image"
		case followers_count = "followers_count"
		case protected = "protected"
		case profile_text_color = "profile_text_color"
		case lang = "lang"
		case profile_background_color = "profile_background_color"
		case time_zone = "time_zone"
		case verified = "verified"
		case profile_background_image_url_https = "profile_background_image_url_https"
		case description = "description"
		case geo_enabled = "geo_enabled"
		case notifications = "notifications"
		case default_profile_image = "default_profile_image"
		case friends_count = "friends_count"
		case profile_background_image_url = "profile_background_image_url"
		case statuses_count = "statuses_count"
		case following = "following"
		case screen_name = "screen_name"
		case show_all_inline_media = "show_all_inline_media"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		profile_sidebar_fill_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_fill_color)
		profile_background_tile = try values.decodeIfPresent(Bool.self, forKey: .profile_background_tile)
		profile_sidebar_border_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_border_color)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		profile_image_url = try values.decodeIfPresent(String.self, forKey: .profile_image_url)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		follow_request_sent = try values.decodeIfPresent(Bool.self, forKey: .follow_request_sent)
		is_translator = try values.decodeIfPresent(Bool.self, forKey: .is_translator)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		profile_link_color = try values.decodeIfPresent(String.self, forKey: .profile_link_color)
		entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
		favourites_count = try values.decodeIfPresent(Int.self, forKey: .favourites_count)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		default_profile = try values.decodeIfPresent(Bool.self, forKey: .default_profile)
		contributors_enabled = try values.decodeIfPresent(Bool.self, forKey: .contributors_enabled)
		profile_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_image_url_https)
		utc_offset = try values.decodeIfPresent(Int.self, forKey: .utc_offset)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		listed_count = try values.decodeIfPresent(Int.self, forKey: .listed_count)
		profile_use_background_image = try values.decodeIfPresent(Bool.self, forKey: .profile_use_background_image)
		followers_count = try values.decodeIfPresent(Int.self, forKey: .followers_count)
		protected = try values.decodeIfPresent(Bool.self, forKey: .protected)
		profile_text_color = try values.decodeIfPresent(String.self, forKey: .profile_text_color)
		lang = try values.decodeIfPresent(String.self, forKey: .lang)
		profile_background_color = try values.decodeIfPresent(String.self, forKey: .profile_background_color)
		time_zone = try values.decodeIfPresent(String.self, forKey: .time_zone)
		verified = try values.decodeIfPresent(Bool.self, forKey: .verified)
		profile_background_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url_https)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		geo_enabled = try values.decodeIfPresent(Bool.self, forKey: .geo_enabled)
		notifications = try values.decodeIfPresent(Bool.self, forKey: .notifications)
		default_profile_image = try values.decodeIfPresent(Bool.self, forKey: .default_profile_image)
		friends_count = try values.decodeIfPresent(Int.self, forKey: .friends_count)
		profile_background_image_url = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url)
		statuses_count = try values.decodeIfPresent(Int.self, forKey: .statuses_count)
		following = try values.decodeIfPresent(Bool.self, forKey: .following)
		screen_name = try values.decodeIfPresent(String.self, forKey: .screen_name)
		show_all_inline_media = try values.decodeIfPresent(Bool.self, forKey: .show_all_inline_media)
	}

}
