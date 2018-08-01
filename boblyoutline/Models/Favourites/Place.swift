
import Foundation
struct Place : Codable {
	let name : String?
	let country_code : String?
	let country : String?
	let attributes : Attributes?
	let url : String?
	let id : String?
	let bounding_box : Bounding_box?
	let full_name : String?
	let place_type : String?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case country_code = "country_code"
		case country = "country"
		case attributes = "attributes"
		case url = "url"
		case id = "id"
		case bounding_box = "bounding_box"
		case full_name = "full_name"
		case place_type = "place_type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		country_code = try values.decodeIfPresent(String.self, forKey: .country_code)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		attributes = try values.decodeIfPresent(Attributes.self, forKey: .attributes)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		bounding_box = try values.decodeIfPresent(Bounding_box.self, forKey: .bounding_box)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
		place_type = try values.decodeIfPresent(String.self, forKey: .place_type)
	}

}
