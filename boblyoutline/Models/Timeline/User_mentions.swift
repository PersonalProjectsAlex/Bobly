
import Foundation
struct User_mentions : Codable {
	let screen_name : String?
	let name : String?
	let id : Int?
	let id_str : String?
	let indices : [Int]?

	enum CodingKeys: String, CodingKey {

		case screen_name = "screen_name"
		case name = "name"
		case id = "id"
		case id_str = "id_str"
		case indices = "indices"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		screen_name = try values.decodeIfPresent(String.self, forKey: .screen_name)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		id_str = try values.decodeIfPresent(String.self, forKey: .id_str)
		indices = try values.decodeIfPresent([Int].self, forKey: .indices)
	}

}
