import Foundation
struct Sizes : Codable {
	let large : Large?
	let small : Small?
	let thumb : Thumb?
	let medium : Medium?

	enum CodingKeys: String, CodingKey {

		case large = "large"
		case small = "small"
		case thumb = "thumb"
		case medium = "medium"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		large = try values.decodeIfPresent(Large.self, forKey: .large)
		small = try values.decodeIfPresent(Small.self, forKey: .small)
		thumb = try values.decodeIfPresent(Thumb.self, forKey: .thumb)
		medium = try values.decodeIfPresent(Medium.self, forKey: .medium)
	}

}
