

import Foundation
struct Media : Codable {
	let media_url_https : String?
	let id : Double?
	let expanded_url : String?
	let media_url : String?
	let id_str : String?
	let display_url : String?
	let type : String?
	let sizes : Sizes?
	let indices : [Double]?
	let url : String?

	enum CodingKeys: String, CodingKey {

		case media_url_https = "media_url_https"
		case id = "id"
		case expanded_url = "expanded_url"
		case media_url = "media_url"
		case id_str = "id_str"
		case display_url = "display_url"
		case type = "type"
		case sizes = "sizes"
		case indices = "indices"
		case url = "url"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		media_url_https = try values.decodeIfPresent(String.self, forKey: .media_url_https)
		id = try values.decodeIfPresent(Double.self, forKey: .id)
		expanded_url = try values.decodeIfPresent(String.self, forKey: .expanded_url)
		media_url = try values.decodeIfPresent(String.self, forKey: .media_url)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		display_url = try values.decodeIfPresent(String.self, forKey: .display_url)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		sizes = try values.decodeIfPresent(Sizes.self, forKey: .sizes)
		indices = try values.decodeIfPresent([Double].self, forKey: .indices)
		url = try values.decodeIfPresent(String.self, forKey: .url)
	}

}
