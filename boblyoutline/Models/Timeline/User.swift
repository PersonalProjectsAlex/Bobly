/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct User : Codable {
	let id : Int?
	let id_str : String?
	let name : String?
	let screen_name : String?
	let location : String?
	let description : String?
	let url : String?
	let entities : Entities?
	let protected : Bool?
	let followers_count : Int?
	let friends_count : Int?
	let listed_count : Int?
	let created_at : String?
	let favourites_count : Int?
	let utc_offset : Int?
	let time_zone : String?
	let geo_enabled : Bool?
	let verified : Bool?
	let statuses_count : Int?
	let lang : String?
	let contributors_enabled : Bool?
	let is_translator : Bool?
	let is_translation_enabled : Bool?
	let profile_background_color : String?
	let profile_background_image_url : String?
	let profile_background_image_url_https : String?
	let profile_background_tile : Bool?
	let profile_image_url : String?
	let profile_image_url_https : String?
	let profile_banner_url : String?
	let profile_link_color : String?
	let profile_sidebar_border_color : String?
	let profile_sidebar_fill_color : String?
	let profile_text_color : String?
	let profile_use_background_image : Bool?
	let has_extended_profile : Bool?
	let default_profile : Bool?
	let default_profile_image : Bool?
	let following : Bool?
	let follow_request_sent : Bool?
	let notifications : Bool?
	let translator_type : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case id_str = "id_str"
		case name = "name"
		case screen_name = "screen_name"
		case location = "location"
		case description = "description"
		case url = "url"
		case entities = "entities"
		case protected = "protected"
		case followers_count = "followers_count"
		case friends_count = "friends_count"
		case listed_count = "listed_count"
		case created_at = "created_at"
		case favourites_count = "favourites_count"
		case utc_offset = "utc_offset"
		case time_zone = "time_zone"
		case geo_enabled = "geo_enabled"
		case verified = "verified"
		case statuses_count = "statuses_count"
		case lang = "lang"
		case contributors_enabled = "contributors_enabled"
		case is_translator = "is_translator"
		case is_translation_enabled = "is_translation_enabled"
		case profile_background_color = "profile_background_color"
		case profile_background_image_url = "profile_background_image_url"
		case profile_background_image_url_https = "profile_background_image_url_https"
		case profile_background_tile = "profile_background_tile"
		case profile_image_url = "profile_image_url"
		case profile_image_url_https = "profile_image_url_https"
		case profile_banner_url = "profile_banner_url"
		case profile_link_color = "profile_link_color"
		case profile_sidebar_border_color = "profile_sidebar_border_color"
		case profile_sidebar_fill_color = "profile_sidebar_fill_color"
		case profile_text_color = "profile_text_color"
		case profile_use_background_image = "profile_use_background_image"
		case has_extended_profile = "has_extended_profile"
		case default_profile = "default_profile"
		case default_profile_image = "default_profile_image"
		case following = "following"
		case follow_request_sent = "follow_request_sent"
		case notifications = "notifications"
		case translator_type = "translator_type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		screen_name = try values.decodeIfPresent(String.self, forKey: .screen_name)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		entities = try values.decodeIfPresent(Entities.self, forKey: .entities)
		protected = try values.decodeIfPresent(Bool.self, forKey: .protected)
		followers_count = try values.decodeIfPresent(Int.self, forKey: .followers_count)
		friends_count = try values.decodeIfPresent(Int.self, forKey: .friends_count)
		listed_count = try values.decodeIfPresent(Int.self, forKey: .listed_count)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		favourites_count = try values.decodeIfPresent(Int.self, forKey: .favourites_count)
		utc_offset = try values.decodeIfPresent(Int.self, forKey: .utc_offset)
		time_zone = try values.decodeIfPresent(String.self, forKey: .time_zone)
		geo_enabled = try values.decodeIfPresent(Bool.self, forKey: .geo_enabled)
		verified = try values.decodeIfPresent(Bool.self, forKey: .verified)
		statuses_count = try values.decodeIfPresent(Int.self, forKey: .statuses_count)
		lang = try values.decodeIfPresent(String.self, forKey: .lang)
		contributors_enabled = try values.decodeIfPresent(Bool.self, forKey: .contributors_enabled)
		is_translator = try values.decodeIfPresent(Bool.self, forKey: .is_translator)
		is_translation_enabled = try values.decodeIfPresent(Bool.self, forKey: .is_translation_enabled)
		profile_background_color = try values.decodeIfPresent(String.self, forKey: .profile_background_color)
		profile_background_image_url = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url)
		profile_background_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_background_image_url_https)
		profile_background_tile = try values.decodeIfPresent(Bool.self, forKey: .profile_background_tile)
		profile_image_url = try values.decodeIfPresent(String.self, forKey: .profile_image_url)
		profile_image_url_https = try values.decodeIfPresent(String.self, forKey: .profile_image_url_https)
		profile_banner_url = try values.decodeIfPresent(String.self, forKey: .profile_banner_url)
		profile_link_color = try values.decodeIfPresent(String.self, forKey: .profile_link_color)
		profile_sidebar_border_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_border_color)
		profile_sidebar_fill_color = try values.decodeIfPresent(String.self, forKey: .profile_sidebar_fill_color)
		profile_text_color = try values.decodeIfPresent(String.self, forKey: .profile_text_color)
		profile_use_background_image = try values.decodeIfPresent(Bool.self, forKey: .profile_use_background_image)
		has_extended_profile = try values.decodeIfPresent(Bool.self, forKey: .has_extended_profile)
		default_profile = try values.decodeIfPresent(Bool.self, forKey: .default_profile)
		default_profile_image = try values.decodeIfPresent(Bool.self, forKey: .default_profile_image)
		following = try values.decodeIfPresent(Bool.self, forKey: .following)
		follow_request_sent = try values.decodeIfPresent(Bool.self, forKey: .follow_request_sent)
		notifications = try values.decodeIfPresent(Bool.self, forKey: .notifications)
		translator_type = try values.decodeIfPresent(String.self, forKey: .translator_type)
	}

}