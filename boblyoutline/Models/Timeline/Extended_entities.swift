
import Foundation
struct Extended_entities : Codable {
	let media : [Media]?

	enum CodingKeys: String, CodingKey {

		case media = "media"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		media = try values.decodeIfPresent([Media].self, forKey: .media)
	}

}
