

import Foundation
struct BlockList : Codable {
	let time_zone : String?
	let protected : Bool?
	let profile_sidebar_border_color : String?
	let profile_link_color : String?
	let lang : String?
	let favourites_count : Double?
	let default_profile_image : Bool?
	let profile_background_color : String?
	let profile_sidebar_fill_color : String?
	let profile_background_tile : Bool?
	let is_translator : Bool?
	let is_translation_enabled : Bool?
	let profile_image_url_https : String?
	let friends_count : Double?
	let id : Double?
	let blocked_by : Bool?
	let entities : Entities?
	let profile_background_image_url_https : String?
	let muting : Bool?
	let profile_image_url : String?
	let statuses_count : Double?
	let default_profile : Bool?
	let following : Bool?
	let url : String?
	let listed_count : Double?
	let name : String?
	let utc_offset : String?
	let geo_enabled : Bool?
	let profile_use_background_image : Bool?
	let screen_name : String?
	let description : String?
	let notifications : Bool?
	let contributors_enabled : Bool?
	let has_extended_profile : Bool?
	let blocking : Bool?
	let followers_count : Double?
	let status : BlockStatus?
	let location : String?
	let live_following : Bool?
	let verified : Bool?
	let created_at : String?
	let follow_request_sent : Bool?
	let id_str : String?
	let profile_banner_url : String?
	let profile_background_image_url : String?
	let profile_text_color : String?
	let translator_type : String?

	enum CodingKeys: String, CodingKey {

		case time_zone = "time_zone"
		case protected = "protected"
		case profile_sidebar_border_color = "profile_sidebar_border_color"
		case profile_link_color = "profile_link_color"
		case lang = "lang"
		case favourites_count = "favourites_count"
		case default_profile_image = "default_profile_image"
		case profile_background_color = "profile_background_color"
		case profile_sidebar_fill_color = "profile_sidebar_fill_color"
		case profile_background_tile = "profile_background_tile"
		case is_translator = "is_translator"
		case is_translation_enabled = "is_translation_enabled"
		case profile_image_url_https = "profile_image_url_https"
		case friends_count = "friends_count"
		case id = "id"
		case blocked_by = "blocked_by"
		case entities = "entities"
		case profile_background_image_url_https = "profile_background_image_url_https"
		case muting = "muting"
		case profile_image_url = "profile_image_url"
		case statuses_count = "statuses_count"
		case default_profile = "default_profile"
		case following = "following"
		case url = "url"
		case listed_count = "listed_count"
		case name = "name"
		case utc_offset = "utc_offset"
		case geo_enabled = "geo_enabled"
		case profile_use_background_image = "profile_use_background_image"
		case screen_name = "screen_name"
		case description = "description"
		case notifications = "notifications"
		case contributors_enabled = "contributors_enabled"
		case has_extended_profile = "has_extended_profile"
		case blocking = "blocking"
		case followers_count = "followers_count"
		case status = "status"
		case location = "location"
		case live_following = "live_following"
		case verified = "verified"
		case created_at = "created_at"
		case follow_request_sent = "follow_request_sent"
		case id_str = "id_str"
		case profile_banner_url = "profile_banner_url"
		case profile_background_image_url = "profile_background_image_url"
		case profile_text_color = "profile_text_color"
		case translator_type = "translator_type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		time_zone = try values.decodeIfPresent(String.self, forKey: .time_zone)
		protected = try values.decodeIfPresent(Bool.self, forKey: .protected)
		profile_sidebar_border_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_border_color)
		profile_link_color = try values.decodeIfPresent(String.self, forKey: .profile_link_color)
		lang = try values.decodeIfPresent(String.self, forKey: .lang)
		favourites_count = try values.decodeIfPresent(Double.self, forKey: .favourites_count)
		default_profile_image = try values.decodeIfPresent(Bool.self, forKey: .default_profile_image)
		profile_background_color = try values.decodeIfPresent(String.self, forKey: .profile_background_color)
		profile_sidebar_fill_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_fill_color)
		profile_background_tile = try values.decodeIfPresent(Bool.self, forKey: .profile_background_tile)
		is_translator = try values.decodeIfPresent(Bool.self, forKey: .is_translator)
		is_translation_enabled = try values.decodeIfPresent(Bool.self, forKey: .is_translation_enabled)
		profile_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_image_url_https)
		friends_count = try values.decodeIfPresent(Double.self, forKey: .friends_count)
		id = try values.decodeIfPresent(Double.self, forKey: .id)
		blocked_by = try values.decodeIfPresent(Bool.self, forKey: .blocked_by)
		entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
		profile_background_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url_https)
		muting = try values.decodeIfPresent(Bool.self, forKey: .muting)
		profile_image_url = try values.decodeIfPresent(String.self, forKey: .profile_image_url)
		statuses_count = try values.decodeIfPresent(Double.self, forKey: .statuses_count)
		default_profile = try values.decodeIfPresent(Bool.self, forKey: .default_profile)
		following = try values.decodeIfPresent(Bool.self, forKey: .following)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		listed_count = try values.decodeIfPresent(Double.self, forKey: .listed_count)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		utc_offset = try values.decodeIfPresent(String.self, forKey: .utc_offset)
		geo_enabled = try values.decodeIfPresent(Bool.self, forKey: .geo_enabled)
		profile_use_background_image = try values.decodeIfPresent(Bool.self, forKey: .profile_use_background_image)
		screen_name = try values.decodeIfPresent(String.self, forKey: .screen_name)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		notifications = try values.decodeIfPresent(Bool.self, forKey: .notifications)
		contributors_enabled = try values.decodeIfPresent(Bool.self, forKey: .contributors_enabled)
		has_extended_profile = try values.decodeIfPresent(Bool.self, forKey: .has_extended_profile)
		blocking = try values.decodeIfPresent(Bool.self, forKey: .blocking)
		followers_count = try values.decodeIfPresent(Double.self, forKey: .followers_count)
		status = try values.decodeIfPresent(BlockStatus.self, forKey: .status)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		live_following = try values.decodeIfPresent(Bool.self, forKey: .live_following)
		verified = try values.decodeIfPresent(Bool.self, forKey: .verified)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		follow_request_sent = try values.decodeIfPresent(Bool.self, forKey: .follow_request_sent)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		profile_banner_url = try values.decodeIfPresent(String.self, forKey: .profile_banner_url)
		profile_background_image_url = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url)
		profile_text_color = try values.decodeIfPresent(String.self, forKey: .profile_text_color)
		translator_type = try values.decodeIfPresent(String.self, forKey: .translator_type)
	}

}
